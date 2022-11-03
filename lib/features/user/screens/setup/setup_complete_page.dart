import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/features/user/data/readonly_user_repository.dart';
import 'package:dating_app/features/user/screens/profile/profile/profile_page.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SetupCompletePage extends ConsumerWidget {
  const SetupCompletePage({super.key});

  static const routeName = 'setup-complete';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                text: l10n.goToProfilePage,
                onPressed: () async {
                  try {
                    if (await ref
                        .read(readonlyUserRepositoryProvider)
                        .completeSetup()) {
                      context.goNamed(ProfilePage.routeName);
                    }
                  } on Exception catch (e) {
                    logger.shout(e);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
