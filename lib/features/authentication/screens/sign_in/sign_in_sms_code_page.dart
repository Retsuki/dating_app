import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/authentication/applications/phone_auth_state_notifier.dart';
import 'package:dating_app/features/authentication/models/phone/phone.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignInSmsCodePage extends ConsumerWidget {
  const SignInSmsCodePage({super.key});

  static const routeName = 'sign-in-sms-code';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final primaryColor = Theme.of(context).colorScheme.primary;

    final phoneAuthState = ref.watch(phoneAuthStateNotifierProvider);
    final phoneAuthNotifier =
        ref.watch(phoneAuthStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBackButton(title: l10n.authenticationCode),
      body: UnfocusOnTap(
        child: Form(
          key: phoneAuthNotifier.smsCodePageFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Gap(60),
                Text(
                  l10n.authenticationCodeSend(
                    Phone.maskPhoneNumber(
                      Phone.toInternatinalPhoneNumber(
                        phoneAuthState.phoneNumber!,
                      ),
                    ),
                  ),
                ),
                const Gap(60),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  cursorColor: primaryColor,
                  autoFocus: true,
                  animationType: AnimationType.none,
                  animationDuration: Duration.zero,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldWidth: 50,
                    fieldHeight: 68,
                    borderWidth: 1,
                    borderRadius: BorderRadius.circular(20),
                    activeColor: primaryColor,
                    selectedColor: primaryColor,
                    inactiveColor: Colors.black12,
                  ),
                  onChanged: (value) =>
                      phoneAuthNotifier.authWithPhoneNumberAndSmsCode(
                    context: context,
                    value: value,
                  ),
                ),
                const Gap(60),
                Text(
                  '認証コードを再送信する',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
