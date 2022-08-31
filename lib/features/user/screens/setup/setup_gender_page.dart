import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_select_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/setup/setup_complete_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SetupGenderPage extends ConsumerWidget {
  const SetupGenderPage({super.key});

  static const routeName = 'setup-gender';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBackButton(title: l10n.gender),
      body: UnfocusOnTap(
        child: Form(
          key: setupNotifier.setupFormKeys[SetupFormType.gender],
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                children: [
                  AppSelectFormField(
                    labelText: l10n.gender,
                    shrinkWrap: true,
                    actionItems: [l10n.male, l10n.female, l10n.other],
                    controller: setupNotifier.genderTextController,
                    onSelectedValue: (value) {
                      setupNotifier.genderTextController.text = value;
                    },
                  ),
                  const Spacer(),
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
                .saveToFirestoreIfValid(SetupFormType.gender)) {
              context.goNamed(SetupCompletePage.routeName);
            }
          },
        ),
      ),
    );
  }
}
