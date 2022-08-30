import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/setup/setup_address_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/validators/setup/birthday_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SetupBirthdayPage extends ConsumerWidget {
  const SetupBirthdayPage({super.key});

  static const routeName = 'setup-birthday';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupNotifier = ref.read(setupStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBackButton(title: l10n.birthday),
      body: UnfocusOnTap(
        child: Form(
          key: setupNotifier.setupFormKeys[SetupFormType.birthday],
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(l10n.birthdayFormatPrecautions),
                  const Gap(24),
                  AppTextFormField(
                    labelText: l10n.yyyyMMdd,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      BirthdayTextInputFormatter(),
                      LengthLimitingTextInputFormatter(10),
                    ],
                    // TODO_R: ２０歳未満は制限かける
                    validator: (birthday) => birthdayValidator(
                      l10n: l10n,
                      birthday: birthday,
                    ),
                  )
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
                .saveToFirestoreIfValid(SetupFormType.birthday)) {
              context.goNamed(SetupAddressPage.routeName);
            }
          },
        ),
      ),
    );
  }
}
