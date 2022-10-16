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
    StateNotifierProvider<SetupStateNotifier, List<String>>((ref) {
  return SetupStateNotifier(ref.read);
});

class SetupStateNotifier extends StateNotifier<List<String>> {
  SetupStateNotifier(this._read) : super([]) {
    initUser();
  }
  final Reader _read;

  Future<void> initUser() async {
    final userDoc = await _read(userStreamProvider.future);
    final privateUserDoc = await _read(privateUserStreamProvider.future);

    seiTextController.text = privateUserDoc?.data()?.sei ?? '';
    meiTextController.text = privateUserDoc?.data()?.mei ?? '';
    nicknameTextController.text = userDoc?.data()?.nickName ?? '';
    birthdayTextController.text = userDoc?.data()?.birthday ?? '';
    zipcodeTextController.text = privateUserDoc?.data()?.zipcode ?? '';
    prefectureTextController.text = userDoc?.data()?.prefecture ?? '';
    cityTextController.text = privateUserDoc?.data()?.city ?? '';
    streetTextController.text = privateUserDoc?.data()?.street ?? '';
    buildingTextController.text = privateUserDoc?.data()?.building ?? '';
    genderTextController.text =
        userDoc?.data()?.gender == null ? '' : userDoc!.data()!.gender.toStr();
    heightTextController.text = userDoc?.data()?.height.toString() ?? '0';
    occupationTextController.text = userDoc?.data()?.occupation ?? '';
  }

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
  final heightTextController = TextEditingController();
  final occupationTextController = TextEditingController();

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
      height: int.parse(heightTextController.text),
      occupation: occupationTextController.text,
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

  void add(String interest) {
    state = [...state, interest];
  }

  void remove(String interest) {
    state = [
      for (final stateInterest in state)
        if (stateInterest != interest) stateInterest,
    ];
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
      heightTextController,
      occupationTextController,
    ]) {
      tc.dispose();
    }

    super.dispose();
  }
}

enum SetupFormType {
  name,
  birthday,
  address,
  gender,
  photos,
}
