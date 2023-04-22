import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_text_form_field.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/authentication/applications/email_notifier.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/validators/email/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SignUpEmailPage extends ConsumerWidget {
  const SignUpEmailPage({super.key});

  static const routeName = 'sign-up-email';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final emailNotifier = ref.watch(emailStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBackButton(title: l10n.email),
      body: UnfocusOnTap(
        child: Form(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                children: [
                  Text(l10n.emailConfirmationMessage),
                  const Gap(24),
                  AppTextFormField(
                    controller: emailNotifier.emailTextController,
                    labelText: l10n.email,
                    validator: (email) => emailValidator(
                      l10n: l10n,
                      email: email,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: AppFilledButton(
          text: l10n.goNext,
          onPressed: () => emailNotifier.sendSignInLinkToEmail(
            context: context,
          ),
        ),
      ),
    );
  }
}
