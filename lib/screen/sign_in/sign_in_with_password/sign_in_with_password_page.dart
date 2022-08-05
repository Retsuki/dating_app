import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInWithPasswordPage extends StatelessWidget {
  const SignInWithPasswordPage({super.key});

  static const routeName = 'sign-in-with-password';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                Assets.images.signUp.signUp.image(scale: 4),
                const Gap(40),
                Text(
                  l10n.letsSignYouIn,
                  style: textTheme.displayLarge,
                ),
                const Gap(40),
                const AppForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppForm extends StatelessWidget {
  const AppForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      children: [
        const AppSignInWithPassword(),
        const Gap(32),
        const AppSignInWithSns(),
        const Gap(32),
        Text(
          l10n.dontHaveAnAccount,
          style: textTheme.bodySmall!.copyWith(color: colorScheme.primary),
        )
      ],
    );
  }
}

class AppSignInWithPassword extends StatelessWidget {
  const AppSignInWithPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      children: [
        AppTextFormField(labelText: l10n.email),
        const Gap(24),
        AppTextFormField(
          labelText: l10n.password,
          obscureText: true,
        ),
        const Gap(24),
        FilledButton(
          text: l10n.signIn,
          type: Type.round,
          onPressed: () {},
        ),
        const Gap(24),
        Text(
          l10n.forgotThePassword,
          style: textTheme.bodySmall!.copyWith(color: colorScheme.primary),
        ),
      ],
    );
  }
}

class AppSignInWithSns extends StatelessWidget {
  const AppSignInWithSns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GhostButton(
                text: l10n.facebook,
                icon: Assets.images.logo.facebook.image(scale: 5),
                borderColor: Colors.black12,
                textStyle: const TextStyle(color: Colors.black),
                onPressed: () {},
              ),
            ),
            const Gap(24),
            Expanded(
              child: GhostButton(
                text: l10n.google,
                icon: Assets.images.logo.google.image(scale: 5),
                borderColor: Colors.black12,
                textStyle: const TextStyle(color: Colors.black),
                onPressed: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}
