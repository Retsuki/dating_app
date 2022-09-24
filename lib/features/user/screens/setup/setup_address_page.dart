import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/setup/setup_gender_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/validators/setup/required_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SetupAddressPage extends ConsumerWidget {
  const SetupAddressPage({super.key});

  static const routeName = 'setup-address';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);
    final prefecture = setupNotifier.prefectureTextController.text;
    final city = setupNotifier.cityTextController.text;

    return Scaffold(
      appBar: AppBackButton(title: '$prefecture $city'),
      body: UnfocusOnTap(
        child: Form(
          key: setupNotifier.setupFormKeys[SetupFormType.address],
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                children: [
                  AppTextFormField(
                    labelText: l10n.address1,
                    controller: setupNotifier.streetTextController,
                    validator: (value) => requiredFormValidator(
                      value: value,
                      message: l10n.somethingIsRequired(l10n.sei),
                    ),
                  ),
                  const Gap(24),
                  AppTextFormField(
                    labelText: l10n.address2,
                    controller: setupNotifier.buildingTextController,
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
                .saveToFirestoreIfValid(SetupFormType.address)) {
              context.goNamed(SetupGenderPage.routeName);
            }
          },
        ),
      ),
    );
  }
}
