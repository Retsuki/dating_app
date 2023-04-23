import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/features/user/data/user_repository.dart';
import 'package:dating_app/features/user/models/private_user/private_user.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/common.dart';
import 'package:dating_app/utils/extensions/extension_firestore_document.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isCompletedSetupProvider = StreamProvider<bool>((ref) {
  final readonlyUser = ref.watch(readonlyUserStreamProvider);
  return readonlyUser.when(
    data: (readonlyUser) {
      return readonlyUser?.data()?.isCompletedSetup == true
          ? Stream.value(true)
          : Stream.value(false);
    },
    loading: () => const Stream.empty(),
    error: (_, __) => const Stream.empty(),
  );
});

final setupStateNotifierProvider =
    StateNotifierProvider<SetupStateNotifier, List<String>>((ref) {
  return SetupStateNotifier(ref);
});

class SetupStateNotifier extends StateNotifier<List<String>> {
  SetupStateNotifier(this._ref) : super([]) {
    initUser();
  }
  final Ref _ref;

  Future<void> initUser() async {
    final userDoc = await _ref.read(userStreamProvider.future);
    final privateUserDoc = await _ref.read(privateUserStreamProvider.future);

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

    final interests = userDoc?.data()?.interests;
    if (interests != null) {
      state = [...interests];
    }
  }

  Future<bool> deleteUser({required BuildContext context}) async {
    final l10n = L10n.of(context);
    try {
      final result = await showOkCancelAlertDialog(
        context: context,
        title: l10n.cautionTitle,
        message: l10n.cautionDeleteUser,
        okLabel: l10n.delete,
        isDestructiveAction: true,
      );
      if (result == OkCancelResult.cancel) {
        return false;
      }

      await executeWithProgress(context, () async {
        await _ref.read(userRepositoryProvider).deleteUser();
      });
      return true;
    } on Exception {
      await showOkAlertDialog(
        context: context,
        title: l10n.errorOccurred,
        message: l10n.errorFailedDeleteUser,
      );
      return false;
    }
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
    final uid = _ref.read(authUserProvider).value!.uid;

    // ニックネームは <user> に
    final userDoc = _ref.read(userStreamProvider).value;
    final user = (userDoc?.data() ?? const User()).copyWith(
      nickName: nicknameTextController.text,
      birthday: birthdayTextController.text,
      prefecture: prefectureTextController.text,
      gender: genderTextController.text.isNullOrEmpty
          ? UserGender.other
          : toUserGender(genderTextController.text),
      height: int.parse(heightTextController.text),
      occupation: occupationTextController.text,
      interests: state,
    );
    await _ref.read(userRefProvider).doc(uid).raw.set(
      <String, dynamic>{
        ...user.toJson(),
        'updated_at': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );

    // 姓名は <private user> に
    final privateUserDoc = _ref.read(privateUserStreamProvider).value;
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
    await _ref.read(privateUserRefProvider).doc(uid).raw.set(<String, dynamic>{
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
  interests,
}
