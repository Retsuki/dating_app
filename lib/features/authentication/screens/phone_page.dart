import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/validators/phone/phone_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  static const routeName = 'phone';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBackButton(title: l10n.phone),
      body: UnfocusOnTap(
        child: Form(
          key: formKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                children: [
                  AppTextFormField(
                    labelText: l10n.withoutHyphens,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(12),
                    ],
                    validator: (phoneNumber) => phoneValidator(
                      l10n: l10n,
                      phoneNumber: phoneNumber,
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
          onPressed: () {
            if (formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
        ),
      ),
    );
  }
}
