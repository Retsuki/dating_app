import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/screen/setup/setup_birthday/setup_birthday_page.dart';
import 'package:dating_app/utils/validators/setup/required_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SetupNamePage extends ConsumerWidget {
  const SetupNamePage({super.key});

  static const routeName = 'setup-name';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);
    final formKey = setupNotifier.setupFormKeys[SetupFormType.name];

    return Scaffold(
      appBar: AppBackButton(title: l10n.name),
      body: UnfocusOnTap(
        child: Form(
          key: formKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  AppTextFormField(
                    labelText: l10n.sei,
                    controller: setupNotifier.seiTextController,
                    validator: (value) => requiredFormValidator(
                      value: value,
                      message: l10n.somethingIsRequired(l10n.sei),
                    ),
                  ),
                  const Gap(24),
                  AppTextFormField(
                    labelText: l10n.mei,
                    controller: setupNotifier.meiTextController,
                    validator: (value) => requiredFormValidator(
                      value: value,
                      message: l10n.somethingIsRequired(l10n.mei),
                    ),
                  ),
                  const Gap(24),
                  AppTextFormField(
                    labelText: l10n.nickname,
                    controller: setupNotifier.nicknameTextController,
                    validator: (value) => requiredFormValidator(
                      value: value,
                      message: l10n.somethingIsRequired(l10n.nickname),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.goNext,
          onPressed: () async {
            if (await setupNotifier
                .saveToFirestoreIfValid(SetupFormType.name)) {
              context.goNamed(SetupBirthdayPage.routeName);
            }
          },
        ),
      ),
    );
  }
}
