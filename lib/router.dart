import 'package:dating_app/features/authentication/screens/email_page.dart';
import 'package:dating_app/features/authentication/screens/phone_page.dart';
import 'package:dating_app/features/authentication/screens/sms_code_page.dart';
import 'package:dating_app/features/onboarding/screens/onboarding_page.dart';
import 'package:dating_app/features/user/screens/profile/profile_image/profile_image_page.dart';
import 'package:dating_app/features/user/screens/profile/profile_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_address_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_birthday_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_complete_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_gender_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_name_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
  );

  return GoRouter(
    // initialLocation:
    //     '/${SetupNamePage.routeName}/${SetupBirthdayPage.routeName}/${SetupAddressPage.routeName}/${SetupGenderPage.routeName}/${SetupCompletePage.routeName}',
    initialLocation: '/${ProfilePage.routeName}',
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: '/${OnboardingPage.routeName}',
        name: OnboardingPage.routeName,
        builder: (_, __) => const OnboardingPage(),
        routes: [signUpRoute],
      ),
      setupRoute,
      GoRoute(
        path: '/${ProfilePage.routeName}',
        name: ProfilePage.routeName,
        builder: (_, __) => const ProfilePage(),
        routes: [
          GoRoute(
            path: ProfileImagePage.routeName,
            name: ProfileImagePage.routeName,
            builder: (_, __) => const ProfileImagePage(),
          ),
        ],
      ),
    ],
  );
});
