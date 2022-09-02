import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/app/permission/permission_provider.dart';
import 'package:dating_app/utils/extensions/extension_firestore_document.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

final profileImageStateNotifierProvider =
    StateNotifierProvider<PhotosStateNotifier, PhotosState>(
  (ref) => PhotosStateNotifier(ref.read),
);

class PhotosStateNotifier extends StateNotifier<PhotosState> {
  PhotosStateNotifier(this._read) : super(PhotosState());

  final Reader _read;
  final ImagePicker _picker = ImagePicker();
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> setPhoto({
    required BuildContext context,
    required int index,
  }) async {
    try {
      // 画像のソースを取得
      final imageSource = await getImageSource(context: context);
      if (imageSource == null) {
        return;
      }

      // アクスセス権限チェック
      final isAccessable = await _read(permissionServiceProvider)
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
      final image = await _picker.pickImage(source: imageSource);
      if (image == null) {
        return;
      }

      // Firebase Storageに画像を保存
      final ref = await setImageToFirebaseStorage(index: index, image: image);

      // Firestoreに画像URLを保存
      await setImageUrlToFirestore(index: index, ref: ref);

      logger.fine('user saved image');
      return;
    } on Exception catch (e) {
      logger.shout(e);
    }
  }

  /// 画像のソースを取得(カメラ or フォトライブラリ)
  Future<ImageSource?> getImageSource({
    required BuildContext context,
  }) async {
    final l10n = L10n.of(context);
    return showModalActionSheet(
      context: context,
      actions: [
        SheetAction<ImageSource>(
          label: l10n.captureFromCamera,
          key: ImageSource.camera,
        ),
        SheetAction<ImageSource>(
          label: l10n.uploadPhoto,
          key: ImageSource.gallery,
        ),
      ],
    );
  }

  /// FirebaseStorageに画像を保存
  Future<Reference> setImageToFirebaseStorage({
    required int index,
    required XFile image,
  }) async {
    final uid = _read(authUserProvider).value!.uid;
    final storageRef = _storage.ref();
    final userImagesRef = storageRef
        .child('${ColName.user}/$uid/profile_images/image_$index.png');
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
    final uid = _read(authUserProvider).value!.uid;
    final imageUrl = await ref.getDownloadURL();
    final user = _read(userStreamProvider).value!.data()!;
    final updatedUser = user.copyWith(
      mainImage: index == 1 ? imageUrl : user.mainImage,
      subImage1: index == 2 ? imageUrl : user.subImage1,
      subImage2: index == 3 ? imageUrl : user.subImage2,
      subImage3: index == 4 ? imageUrl : user.subImage3,
    );
    await _read(userRefProvider).doc(uid).raw.set(
      <String, dynamic>{
        ...updatedUser.toJson(),
        'updated_at': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );
  }
}

class PhotosState {
  PhotosState({
    this.photos,
  });

  final List<String>? photos;
}
