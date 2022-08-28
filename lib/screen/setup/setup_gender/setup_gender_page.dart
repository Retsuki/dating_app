import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_select_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/screen/setup/setup_photo/setup_photo_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SetupGenderPage extends StatelessWidget {
  const SetupGenderPage({super.key});

  static const routeName = 'setup-gender';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.gender),
      body: UnfocusOnTap(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              children: [
                AppSelectFormField(
                  labelText: l10n.gender,
                  shrinkWrap: true,
                  actionItems: [l10n.male, l10n.female, l10n.other],
                  onSelectedValue: (value) {},
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.goNext,
          onPressed: () {
            context.goNamed(SetupPhotoPage.routeName);
          },
        ),
      ),
    );
  }
}
