import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const routeName = 'sign-up';

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
                  l10n.createAnAccount,
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
        AppSignUpWithPassword(l10n: l10n),
        const Gap(32),
        AppSignUpWIthSns(l10n: l10n),
        const Gap(32),
        Text(
          l10n.alreadyHaveAnAccount,
          style: textTheme.bodySmall!.copyWith(color: colorScheme.primary),
        )
      ],
    );
  }
}

class AppSignUpWithPassword extends StatelessWidget {
  const AppSignUpWithPassword({
    super.key,
    required this.l10n,
  });

  final L10n l10n;

  @override
  Widget build(BuildContext context) {
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
          text: l10n.createAnAccount,
          onPressed: () {},
        ),
      ],
    );
  }
}

class AppSignUpWIthSns extends StatelessWidget {
  const AppSignUpWIthSns({
    super.key,
    required this.l10n,
  });

  final L10n l10n;

  @override
  Widget build(BuildContext context) {
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
