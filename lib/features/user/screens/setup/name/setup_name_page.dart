import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/screen/setup/setup_birthday/setup_birthday_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SetupNamePage extends StatelessWidget {
  const SetupNamePage({super.key});

  static const routeName = 'setup-name';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.name),
      body: UnfocusOnTap(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                AppTextFormField(labelText: l10n.sei),
                const Gap(24),
                AppTextFormField(labelText: l10n.mei),
                const Gap(24),
                AppTextFormField(labelText: l10n.nickname),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.goNext,
          onPressed: () {
            context.goNamed(SetupBirthdayPage.routeName);
          },
        ),
      ),
    );
  }
}
