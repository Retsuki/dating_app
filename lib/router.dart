import 'package:dating_app/features/authentication/screens/email_page.dart';
import 'package:dating_app/features/authentication/screens/sms_code_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'components/stylebook/book_back_button.dart';
import 'components/stylebook/book_button.dart';
import 'components/stylebook/book_text_form_field.dart';
import 'features/authentication/screens/phone_page.dart';
import 'features/onboarding/screens/onboarding_page.dart';
import 'screen/profile/profile_page.dart';
import 'screen/setup/setup_address/setup_address_page.dart';
import 'screen/setup/setup_birthday/setup_birthday_page.dart';
import 'screen/setup/setup_complete/setup_complete_page.dart';
import 'screen/setup/setup_gender/setup_gender_page.dart';
import 'screen/setup/setup_name/setup_name_page.dart';
import 'screen/setup/setup_photo/setup_photo_page.dart';
import 'screen/sign_in/sign_in_page.dart';
import 'screen/sign_in/sign_in_with_password/sign_in_with_password_page.dart';
import 'screen/sign_up/sign_up_page.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/${OnboardingPage.routeName}',
    // initialLocation:
    // '/${OnboardingPage.routeName}/${PhonePage.routeName}/${SmsCodePage.routeName}',
    // initialLocation:
    //     '/${OnboardingPage.routeName}/${PhonePage.routeName}/${SmsCodePage.routeName}/${EmailPage.routeName}',
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: '/${BookButton.routeName}',
        name: '/${BookButton.routeName}',
        builder: (context, _) => const BookButton(),
      ),
      GoRoute(
        path: '/${BookTextFormField.routeName}',
        name: '/${BookTextFormField.routeName}',
        builder: (context, _) => const BookTextFormField(),
      ),
      GoRoute(
        path: '/${BookBackButton.routeName}',
        name: '/${BookBackButton.routeName}',
        builder: (context, _) => const BookBackButton(),
      ),
      GoRoute(
        path: '/${OnboardingPage.routeName}',
        name: '/${OnboardingPage.routeName}',
        builder: (_, __) => const OnboardingPage(),
        routes: [
          GoRoute(
            path: PhonePage.routeName,
            name: PhonePage.routeName,
            builder: (_, __) => const PhonePage(),
            routes: [
              GoRoute(
                path: SmsCodePage.routeName,
                name: SmsCodePage.routeName,
                builder: (_, __) => const SmsCodePage(),
                routes: [
                  GoRoute(
                    path: EmailPage.routeName,
                    name: EmailPage.routeName,
                    builder: (_, __) => const EmailPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/${SignInPage.routeName}',
        name: '/${SignInPage.routeName}',
        builder: (context, _) => const SignInPage(),
      ),
      GoRoute(
        path: '/${SignUpPage.routeName}',
        name: '/${SignUpPage.routeName}',
        builder: (context, _) => const SignUpPage(),
      ),
      GoRoute(
        path: '/${SignInWithPasswordPage.routeName}',
        name: '/${SignInWithPasswordPage.routeName}',
        builder: (context, _) => const SignInWithPasswordPage(),
      ),
      GoRoute(
        path: '/${SetupNamePage.routeName}',
        name: '/${SetupNamePage.routeName}',
        builder: (context, _) => const SetupNamePage(),
      ),
      GoRoute(
        path: '/${SetupBirthdayPage.routeName}',
        name: '/${SetupBirthdayPage.routeName}',
        builder: (context, _) => const SetupBirthdayPage(),
      ),
      GoRoute(
        path: '/${SetupAddressPage.routeName}',
        name: '/${SetupAddressPage.routeName}',
        builder: (context, _) => const SetupAddressPage(),
      ),
      GoRoute(
        path: '/${SetupGenderPage.routeName}',
        name: '/${SetupGenderPage.routeName}',
        builder: (context, _) => const SetupGenderPage(),
      ),
      GoRoute(
        path: '/${SetupPhotoPage.routeName}',
        name: '/${SetupPhotoPage.routeName}',
        builder: (context, _) => const SetupPhotoPage(),
      ),
      GoRoute(
        path: '/${SetupCompletePage.routeName}',
        name: '/${SetupCompletePage.routeName}',
        builder: (context, _) => const SetupCompletePage(),
      ),
      GoRoute(
        path: '/${ProfilePage.routeName}',
        name: '/${ProfilePage.routeName}',
        builder: (context, _) => const ProfilePage(),
      ),
    ],
  );
});
