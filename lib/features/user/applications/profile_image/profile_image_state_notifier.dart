import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/storage_path.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/app/permission/permission_provider.dart';
import 'package:dating_app/utils/extensions/extension_firestore_document.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

enum ImageSourceX {
  camera,
  gallery,
  deletion,
}

final profileImageProvider = Provider(
  ProfileImageProvider.new,
);

class ProfileImageProvider {
  ProfileImageProvider(this._ref);

  final Ref _ref;
  final ImagePicker _picker = ImagePicker();
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> setPhoto({
    required BuildContext context,
    required int index,
    bool isExistImage = false,
  }) async {
    try {
      // 画像のソースを取得
      final imageSourceX = await getImageSource(
        context: context,
        isExistImage: isExistImage,
      );
      if (imageSourceX == null) {
        return;
      }

      switch (imageSourceX) {
        case ImageSourceX.camera:
          await _setPhoto(
            context: context,
            index: index,
            imageSource: ImageSource.camera,
          );
          return;
        case ImageSourceX.gallery:
          await _setPhoto(
            context: context,
            index: index,
            imageSource: ImageSource.gallery,
          );
          return;
        case ImageSourceX.deletion:
          await _deleteImage(
            context: context,
            index: index,
          );
          return;
      }
    } on Exception catch (e) {
      logger.shout(e);
    }
  }

  Future<void> _setPhoto({
    required BuildContext context,
    required int index,
    required ImageSource imageSource,
  }) async {
    // アクセス権限チェック
    final isAccessable = await _ref
        .read(permissionServiceProvider)
        .cameraOrPhotosPermissionRequest(
          context: context,
          source: imageSource,
          permission: imageSource == ImageSource.camera
              ? Permission.camera
              : Permission.photos,
        );
    if (!isAccessable) {
      return;
    }

    // ローカルから画像を取得
    final image = await _picker.pickImage(
      source: imageSource,
      maxWidth: 180,
      maxHeight: 244,
    );
    if (image == null) {
      return;
    }

    // Firebase Storageに画像を保存
    final ref = await setImageToFirebaseStorage(index: index, image: image);

    // Firestoreに画像URLを保存
    await setImageUrlToFirestore(index: index, ref: ref);

    logger.fine('user saved image');
  }

  /// 画像のソースを取得(カメラ or フォトライブラリ)
  Future<ImageSourceX?> getImageSource({
    required BuildContext context,
    required bool isExistImage,
  }) async {
    final l10n = L10n.of(context);
    return showModalActionSheet(
      context: context,
      actions: [
        SheetAction<ImageSourceX>(
          label: l10n.captureFromCamera,
          key: ImageSourceX.camera,
        ),
        SheetAction<ImageSourceX>(
          label: l10n.uploadPhoto,
          key: ImageSourceX.gallery,
        ),
        if (isExistImage)
          SheetAction<ImageSourceX>(
            label: l10n.deleteImage,
            key: ImageSourceX.deletion,
          ),
      ],
    );
  }

  /// プロフィールの画像名取得
  String getProfileImageName(int index) {
    switch (index) {
      case 0:
        return UserImageName.mainImage.name;
      case 1:
        return UserImageName.subImage1.name;
      case 2:
        return UserImageName.subImage2.name;
      default:
        return UserImageName.subImage3.name;
    }
  }

  /// FirebaseStorageに画像を保存
  Future<Reference> setImageToFirebaseStorage({
    required int index,
    required XFile image,
  }) async {
    final uid = _ref.read(authUserProvider).value!.uid;
    final storageRef = _storage.ref();
    final userImagesRef = storageRef.child(
      '${StorageName.user}/$uid/${StorageName.profileImages}/${getProfileImageName(index)}.png',
    );
    await userImagesRef.putFile(
      File(image.path),
      SettableMetadata(
        contentType: 'image/png',
        customMetadata: {
          'name': image.name,
        },
      ),
    );
    return userImagesRef;
  }

  /// FirebaseFirestoreにimageUrlを保存
  Future<void> setImageUrlToFirestore({
    required Reference ref,
    required int index,
  }) async {
    final uid = _ref.read(authUserProvider).value!.uid;
    final imageUrl = await ref.getDownloadURL();
    final user = _ref.read(userStreamProvider).value!.data()!;
    final updatedUser = user.copyWith(
      mainImage: index == 0 ? imageUrl : user.mainImage,
      subImage1: index == 1 ? imageUrl : user.subImage1,
      subImage2: index == 2 ? imageUrl : user.subImage2,
      subImage3: index == 3 ? imageUrl : user.subImage3,
    );
    await _ref.read(userRefProvider).doc(uid).raw.set(
      <String, dynamic>{
        ...updatedUser.toJson(),
        'updated_at': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );
  }

  /// 画像を削除
  Future<void> _deleteImage({
    required BuildContext context,
    required int index,
  }) async {
    final uid = _ref.read(authUserProvider).value!.uid;
    final storageRef = _storage.ref();
    final userImagesRef = storageRef.child(
      '${StorageName.user}/$uid/${StorageName.profileImages}/${getProfileImageName(index)}.png',
    );

    await userImagesRef.delete();

    final user = _ref.read(userStreamProvider).value!.data()!;
    final updatedUser = user.copyWith(
      mainImage: index == 0 ? null : user.mainImage,
      subImage1: index == 1 ? null : user.subImage1,
      subImage2: index == 2 ? null : user.subImage2,
      subImage3: index == 3 ? null : user.subImage3,
    );
    await _ref.read(userRefProvider).doc(uid).raw.set(
      <String, dynamic>{
        ...updatedUser.toJson(),
        'updated_at': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );
  }
}
