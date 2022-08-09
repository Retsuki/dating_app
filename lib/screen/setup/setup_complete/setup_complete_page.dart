import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SetupCompletePage extends StatelessWidget {
  const SetupCompletePage({super.key});

  static const routeName = 'setup-complete';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.setup.setupComplete.complete.image(scale: 4),
              const Gap(24),
              Text(
                l10n.setupCompleteMessage,
                style: textTheme.headlineMedium!.copyWith(
                  color: colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(24),
              FilledButton(
                text: l10n.goToHome,
                type: Type.round,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
