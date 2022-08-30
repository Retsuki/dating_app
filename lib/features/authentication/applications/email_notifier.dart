import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/screens/setup/setup_name_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final emailStateNotifierProvider =
    StateNotifierProvider<EmailStateNotifier, EmailState>((ref) {
  return EmailStateNotifier(ref.read);
});

class EmailStateNotifier extends StateNotifier<EmailState> {
  EmailStateNotifier(this._read) : super(EmailState());
  final Reader _read;

  final emailTextController = TextEditingController();

  Future<void> sendSignInLinkToEmail({
    required BuildContext context,
  }) async {
    await _read(authenticatorProvider).sendSignInLinkToEmail(
      email: emailTextController.text,
    );

    context.goNamed(SetupNamePage.routeName);
  }

  @override
  void dispose() {
    emailTextController.dispose();
    super.dispose();
  }
}

class EmailState {}
