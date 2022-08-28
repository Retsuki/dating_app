import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/screen/setup/setup_gender/setup_gender_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SetupAddressPage extends StatelessWidget {
  const SetupAddressPage({super.key});

  static const routeName = 'setup-address';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.address),
      body: UnfocusOnTap(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              children: [
                AppTextFormField(labelText: l10n.prefecture),
                const Gap(24),
                AppTextFormField(labelText: l10n.city),
                const Gap(24),
                AppTextFormField(labelText: l10n.address1),
                const Gap(24),
                AppTextFormField(labelText: l10n.address2),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.goNext,
          onPressed: () {
            context.goNamed(SetupGenderPage.routeName);
          },
        ),
      ),
    );
  }
}
