import 'package:dating_app/components/app_back_button_with_text.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SetupBirthdayPage extends StatelessWidget {
  const SetupBirthdayPage({super.key});

  static const routeName = 'setup-birthday';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: AppBackButtonWithText(text: l10n.birthday),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            children: [
              AppTextFormField(
                labelText: l10n.yyyyMMdd,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  BirthdayTextInputFormatter(),
                  LengthLimitingTextInputFormatter(10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
