import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/authentication/models/phone/phone.dart';
import 'package:dating_app/features/authentication/models/phone/phone_auth.dart';
import 'package:dating_app/features/authentication/screens/sign_in/sign_in_sms_code_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_email_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_sms_code_page.dart';
import 'package:dating_app/features/user/screens/profile/profile/profile_page.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final phoneAuthStateNotifierProvider =
    StateNotifierProvider<PhoneAuthStateNotifier, PhoneAuth>((ref) {
  return PhoneAuthStateNotifier(ref.read);
});

class PhoneAuthStateNotifier extends StateNotifier<PhoneAuth> {
  PhoneAuthStateNotifier(this._read) : super(PhoneAuth());

  final Reader _read;
  final phonePageFormKey = GlobalKey<FormState>();
  final smsCodePageFormKey = GlobalKey<FormState>();

  Future<void> signUpVerifyPhoneNumber({
    required BuildContext context,
  }) async {
    if (!phonePageFormKey.currentState!.validate()) {
      return;
    }

    final internatinalPhoneNumber = Phone.toInternatinalPhoneNumber(
      state.phoneNumber!,
    );

    try {
      await _read(authenticatorProvider)
          .authWithPhoneNumber(internatinalPhoneNumber);

      logger.fine('user sent phone number');
      context.goNamed(SignUpSmsCodePage.routeName);
    } on FirebaseAuthException catch (e) {
      logger.shout(e);
    }
  }

  Future<void> signUpAuthWithPhoneNumberAndSmsCode({
    required BuildContext context,
    required String value,
  }) async {
    updateSmsCode(value);

    if (state.smsCode.isNullOrEmpty || state.smsCode!.length < 6) {
      return;
    }

    try {
      await _read(authenticatorProvider).authWithCredential(
        verificationId: state.verificationId!,
        smsCode: state.smsCode!,
      );

      logger.fine('user created account');
      context.goNamed(SignUpEmailPage.routeName);
    } on FirebaseAuthException catch (e) {
      logger.shout(e);
    }
  }

  /// ログイン用の電話番号入力処理
  Future<void> signInVerifyPhoneNumber({
    required BuildContext context,
  }) async {
    if (!phonePageFormKey.currentState!.validate()) {
      return;
    }

    final internatinalPhoneNumber = Phone.toInternatinalPhoneNumber(
      state.phoneNumber!,
    );

    try {
      await _read(authenticatorProvider)
          .authWithPhoneNumber(internatinalPhoneNumber);

      logger.fine('user sent phone number');
      context.goNamed(SignInSmsCodePage.routeName);
    } on FirebaseAuthException catch (e) {
      logger.shout(e);
    }
  }

  /// ログイン用のSMS認証コード処理
  Future<void> signInAuthWithPhoneNumberAndSmsCode({
    required BuildContext context,
    required String value,
  }) async {
    updateSmsCode(value);

    if (state.smsCode.isNullOrEmpty || state.smsCode!.length < 6) {
      return;
    }

    try {
      await _read(authenticatorProvider).authWithCredential(
        verificationId: state.verificationId!,
        smsCode: state.smsCode!,
      );

      logger.fine('user signed in!!');
      context.goNamed(ProfilePage.routeName);
    } on FirebaseAuthException catch (e) {
      logger.shout(e);
    }
  }

  void updatePhoneNumber(String phoneNumber) {
    state = state.copyWith(
      phoneNumber: phoneNumber,
    );
  }

  void updateVerificationId(String verificationId) {
    state = state.copyWith(
      verificationId: verificationId,
    );
  }

  void updateSmsCode(String smsCode) {
    state = state.copyWith(
      smsCode: smsCode,
    );
  }
}
