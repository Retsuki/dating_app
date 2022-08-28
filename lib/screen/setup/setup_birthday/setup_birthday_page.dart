import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/screen/setup/setup_address/setup_address_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SetupBirthdayPage extends StatelessWidget {
  const SetupBirthdayPage({super.key});

  static const routeName = 'setup-birthday';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.birthday),
      body: UnfocusOnTap(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.goNext,
          onPressed: () {
            context.goNamed(SetupAddressPage.routeName);
          },
        ),
      ),
    );
  }
}
