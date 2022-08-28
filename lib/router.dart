import 'package:dating_app/features/authentication/screens/email_page.dart';
import 'package:dating_app/features/authentication/screens/sms_code_page.dart';
import 'package:dating_app/features/user/screens/setup/name/setup_name_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'features/authentication/screens/phone_page.dart';
import 'features/onboarding/screens/onboarding_page.dart';
import 'screen/profile/profile_page.dart';
import 'screen/setup/setup_address/setup_address_page.dart';
import 'screen/setup/setup_birthday/setup_birthday_page.dart';
import 'screen/setup/setup_complete/setup_complete_page.dart';
import 'screen/setup/setup_gender/setup_gender_page.dart';
import 'screen/setup/setup_photo/setup_photo_page.dart';

final routerProvider = Provider((ref) {
  final signUpRoute = GoRoute(
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
  );
  final setupRoute = GoRoute(
    path: '/${SetupNamePage.routeName}',
    name: SetupNamePage.routeName,
    builder: (_, __) => const SetupNamePage(),
    routes: [
      GoRoute(
        path: SetupBirthdayPage.routeName,
        name: SetupBirthdayPage.routeName,
        builder: (_, __) => const SetupBirthdayPage(),
        routes: [
          GoRoute(
            path: SetupAddressPage.routeName,
            name: SetupAddressPage.routeName,
            builder: (_, __) => const SetupAddressPage(),
            routes: [
              GoRoute(
                path: SetupGenderPage.routeName,
                name: SetupGenderPage.routeName,
                builder: (context, _) => const SetupGenderPage(),
                routes: [
                  GoRoute(
                    path: SetupPhotoPage.routeName,
                    name: SetupPhotoPage.routeName,
                    builder: (context, _) => const SetupPhotoPage(),
                    routes: [
                      GoRoute(
                        path: SetupCompletePage.routeName,
                        name: SetupCompletePage.routeName,
                        builder: (context, _) => const SetupCompletePage(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  return GoRouter(
    // initialLocation: '/${OnboardingPage.routeName}',
    initialLocation: '/${SetupNamePage.routeName}',
    // initialLocation:
    // '/${OnboardingPage.routeName}/${PhonePage.routeName}/${SmsCodePage.routeName}',
    // initialLocation:
    // '/${OnboardingPage.routeName}/${PhonePage.routeName}/${SmsCodePage.routeName}/${EmailPage.routeName}',
    // initialLocation:
    // '/${OnboardingPage.routeName}/${PhonePage.routeName}/${SmsCodePage.routeName}/${EmailPage.routeName}/${SetupNamePage.routeName}',
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: '/${OnboardingPage.routeName}',
        name: '/${OnboardingPage.routeName}',
        builder: (_, __) => const OnboardingPage(),
        routes: [signUpRoute],
      ),
      setupRoute,
      GoRoute(
        path: '/${ProfilePage.routeName}',
        name: '/${ProfilePage.routeName}',
        builder: (context, _) => const ProfilePage(),
      ),
    ],
  );
});
