import 'package:dating_app/components/app_back_button_with_text.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_select_form_field.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class SetupGenderPage extends StatelessWidget {
  const SetupGenderPage({super.key});

  static const routeName = 'setup-gender';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: AppBackButtonWithText(text: l10n.gender),
      ),
      body: SafeArea(
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
              FilledButton(
                text: l10n.goNext,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
