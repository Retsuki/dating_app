import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/features/user/models/private_user/private_user.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/utils/extensions/extension_firestore_document.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final setupStateNotifierProvider =
    StateNotifierProvider<SetupStateNotifier, SetupState>((ref) {
  return SetupStateNotifier(ref.read);
});

class SetupStateNotifier extends StateNotifier<SetupState> {
  SetupStateNotifier(this._read) : super(SetupState());
  final Reader _read;

  // Setup各ページのform key
  final setupFormKeys = Map.fromEntries(
    SetupFormType.values.map(
      (formType) => MapEntry(
        formType,
        GlobalKey<FormState>(),
      ),
    ),
  );

  final seiTextController = TextEditingController();
  final meiTextController = TextEditingController();
  final nicknameTextController = TextEditingController();
  final birthdayTextController = TextEditingController();
  final zipcodeTextController = TextEditingController();
  final prefectureTextController = TextEditingController();
  final cityTextController = TextEditingController();
  final streetTextController = TextEditingController();
  final buildingTextController = TextEditingController();
  final genderTextController = TextEditingController();

  Future<bool> saveToFirestoreIfValid(SetupFormType formType) async {
    if (setupFormKeys[formType]!.currentState!.validate()) {
      await saveToFirestore();
      return true;
    }
    return false;
  }

  Future<void> saveToFirestore() async {
    final uid = _read(authUserProvider).value!.uid;

    // ニックネームは <user> に
    final userDoc = _read(userStreamProvider).value;
    final user = (userDoc?.data() ?? const User()).copyWith(
      nickName: nicknameTextController.text,
      birthday: birthdayTextController.text,
      prefecture: prefectureTextController.text,
      gender: genderTextController.text.isNullOrEmpty
          ? UserGender.other
          : toUserGender(genderTextController.text),
    );
    await _read(userRefProvider).doc(uid).raw.set(
      <String, dynamic>{
        ...user.toJson(),
        'updated_at': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );

    // 姓名は <private user> に
    final privateUserDoc = _read(privateUserStreamProvider).value;
    final privateUser =
        (privateUserDoc?.data() ?? const PrivateUser()).copyWith(
      sei: seiTextController.text,
      mei: meiTextController.text,
      zipcode: zipcodeTextController.text,
      prefecture: prefectureTextController.text,
      city: cityTextController.text,
      street: streetTextController.text,
      building: buildingTextController.text,
    );
    await _read(privateUserRefProvider).doc(uid).raw.set(<String, dynamic>{
      ...privateUser.toJson(),
      'updated_at': FieldValue.serverTimestamp(),
    });

    logger.fine('user saved setup data');
  }

  @override
  void dispose() {
    for (final tc in [
      seiTextController,
      meiTextController,
      nicknameTextController,
      birthdayTextController,
      prefectureTextController,
      cityTextController,
      streetTextController,
      buildingTextController,
      genderTextController,
    ]) {
      tc.dispose();
    }

    super.dispose();
  }
}

class SetupState {}

enum SetupFormType {
  name,
  birthday,
  address,
  gender,
  photos,
}
