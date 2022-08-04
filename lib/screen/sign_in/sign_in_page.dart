import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static const routeName = 'sign-in';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Text(
                l10n.letsYouIn,
                style: textTheme.displayLarge,
              ),
              const Gap(24),
              GhostButton(
                text: l10n.facebook,
                icon: Assets.images.logo.facebook.image(scale: 4),
                onPressed: () {},
              ),
              const Gap(20),
              GhostButton(
                text: l10n.google,
                icon: Assets.images.logo.google.image(scale: 4),
                onPressed: () {},
              ),
              const Gap(20),
              GhostButton(
                text: l10n.apple,
                icon: Assets.images.logo.apple.image(scale: 4),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(l10n.or, style: textTheme.bodyLarge),
              ),
              FilledButton(
                text: l10n.signInWithPassword,
                type: Type.round,
                onPressed: () {},
              ),
              const Spacer(),
              Text(
                l10n.dontHaveAnAccount,
                style: textTheme.bodySmall!.copyWith(
                  color: colorScheme.primary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
