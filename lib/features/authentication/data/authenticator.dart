import 'package:dating_app/features/authentication/applications/phone_auth_state_notifier.dart';
import 'package:dating_app/features/platform/data/app_package_info_provider.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authUserProvider = StreamProvider(
  (ref) => FirebaseAuth.instance.userChanges(),
);

final authenticatorProvider = Provider((ref) {
  return Authenticator(ref.read);
});

// 認証機構
// 認証時に一時的に発生する値などの管理も役割の一つとする
class Authenticator {
  Authenticator(this._read);

  final Reader _read;
  final _auth = FirebaseAuth.instance;

  // 電話番号認証 => IOSの場合はauthWithCredentialも使用する
  Future<void> authWithPhoneNumber(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      // MEMO: Androidを開発する場合に使用する
      verificationCompleted: (PhoneAuthCredential credential) {},
      codeAutoRetrievalTimeout: (String verificationId) {},

      // MEMO: IOS
      codeSent: (String verificationId, int? resendToken) {
        logger.fine('firebase just sent smsCode');
        _read(phoneAuthStateNotifierProvider.notifier)
            .updateVerificationId(verificationId);
      },
      verificationFailed: (FirebaseAuthException e) {
        logger.shout(e);
        if (e.code == 'invalid-phone-number') {
          // ダイアログ表示
        }
        // ダイアログ表示
      },
    );
  }

  // Credentialによる認証
  Future<void> authWithCredential({
    required String verificationId,
    required String smsCode,
  }) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    try {
      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      logger.shout(e);
      if (e.code == 'invalid-verification-code') {
        // ダイアログ表示
      }
      if (e.code == 'invalid-verification-id') {
        // ダイアログ表示
      }
      // ダイアログ表示
    }
  }

  // メールをリンクする
  Future<void> sendSignInLinkToEmail({
    required String email,
  }) async {
    final appPackageInfo = _read(appPackageInfoProvider).appPackageInfo;
    final acs = ActionCodeSettings(
      url: 'https://toipptakosan11.page.link',
      handleCodeInApp: true,
      iOSBundleId: appPackageInfo.packageName,
      androidPackageName: appPackageInfo.packageName,
      androidInstallApp: true,
      androidMinimumVersion: '12',
    );

    try {
      // NOTE: 認証されていなくても通過させてOK
      await _auth.sendSignInLinkToEmail(email: email, actionCodeSettings: acs);
      logger.fine('user sent link email');
    } on FirebaseAuthException catch (e) {
      logger.shout(e);
    }
  }

  // プロバイダをリンクする(Facebook, Google, Apple)

  // ログアウト
}
