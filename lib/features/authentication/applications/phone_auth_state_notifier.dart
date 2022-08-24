import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/authentication/models/phone/phone.dart';
import 'package:dating_app/features/authentication/models/phone/phone_auth.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final phoneAuthStateNotifierProvider =
    StateNotifierProvider<PhoneAuthStateNotifier, PhoneAuth>((ref) {
  return PhoneAuthStateNotifier(ref.read);
});

class PhoneAuthStateNotifier extends StateNotifier<PhoneAuth> {
  PhoneAuthStateNotifier(this._read) : super(PhoneAuth());

  final Reader _read;
  final phonePageFormKey = GlobalKey<FormState>();
  final smsCodePageFormKey = GlobalKey<FormState>();

  Future<void> verifyPhoneNumber() async {
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
      // context.goNamed(SmsCodePage.routeName);

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
