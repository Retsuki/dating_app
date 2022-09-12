import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/worry/applications/worry_post_state_notifier.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class WorryPostPage extends ConsumerWidget {
  const WorryPostPage({super.key});

  static const routeName = 'worry-post';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final worryPostState = ref.watch(worryPostStateNotifierProvider);
    final worryPostNotifier =
        ref.watch(worryPostStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBackButton(title: l10n.warryPost),
      body: UnfocusOnTap(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: ListView(
                children: [
                  Assets.images.performingWithManagement.main.image(scale: 4),
                  const Gap(24),
                  AppTextFormField(
                    controller: worryPostNotifier.worryPostTextController,
                    labelText: l10n.worryPostPlaceholder,
                    minLines: 5,
                    maxLines: 10,
                    borderRadius: 20,
                    autoFocus: false,
                    isDence: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 24,
                    ),
                    onChanged: (value) {
                      worryPostNotifier.updateWorryPostState(
                        value: !value.isNullOrEmpty,
                      );
                    },
                  ),
                  const Gap(64),
                  FilledButton(
                    text: l10n.sendToPost,
                    onPressed: worryPostState.isPossibleSend
                        ? () async {
                            await worryPostNotifier.sendNewWorry();
                            return;
                          }
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
