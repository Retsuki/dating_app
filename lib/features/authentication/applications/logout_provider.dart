import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/onboarding/screens/onboarding_page.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final signOutProvider = Provider(
  SignOutProvider.new,
);

class SignOutProvider {
  const SignOutProvider(this._ref);

  final Ref _ref;

  Future<void> signOut({
    required BuildContext context,
  }) async {
    try {
      await _ref.read(authenticatorProvider).signOut();
      logger.fine('user logout');
    } on Exception catch (e) {
      logger.fine(e);
    } finally {
      context.goNamed(OnboardingPage.routeName);
    }
  }
}
