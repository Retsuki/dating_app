import 'package:dating_app/components/app_back_button_with_text.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SetupNamePage extends StatelessWidget {
  const SetupNamePage({super.key});

  static const routeName = 'setup-name';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: AppBackButtonWithText(text: l10n.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            children: [
              AppTextFormField(labelText: l10n.sei),
              const Gap(24),
              AppTextFormField(labelText: l10n.mei),
              const Spacer(),
              FilledButton(
                text: l10n.goNext,
                type: Type.round,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
