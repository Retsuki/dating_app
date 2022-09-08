import 'package:dating_app/features/authentication/screens/sign_in/sign_in_phone_page.dart';
import 'package:dating_app/features/authentication/screens/sign_in/sign_in_sms_code_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_email_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_phone_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_sms_code_page.dart';
import 'package:dating_app/features/chat/screens/chat/chat_page.dart';
import 'package:dating_app/features/chat/screens/chat_message/chat_message_page.dart';
import 'package:dating_app/features/onboarding/screens/onboarding_page.dart';
import 'package:dating_app/features/performing_with_management/performing_with_management_page.dart';
import 'package:dating_app/features/performing_with_management/screens/dating_with_management.dart/dating_with_management_page.dart';
import 'package:dating_app/features/performing_with_management/screens/youtube/youtube_page.dart';
import 'package:dating_app/features/user/screens/profile/profile/profile_page.dart';
import 'package:dating_app/features/user/screens/profile/profile_image/profile_image_page.dart';
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
    path: SignUpPhonePage.routeName,
    name: SignUpPhonePage.routeName,
    builder: (_, __) => const SignUpPhonePage(),
    routes: [
      GoRoute(
        path: SignUpSmsCodePage.routeName,
        name: SignUpSmsCodePage.routeName,
        builder: (_, __) => const SignUpSmsCodePage(),
        routes: [
          GoRoute(
            path: SignUpEmailPage.routeName,
            name: SignUpEmailPage.routeName,
            builder: (_, __) => const SignUpEmailPage(),
          ),
        ],
      ),
    ],
  );
  final signInRoute = GoRoute(
    path: SignInPhonePage.routeName,
    name: SignInPhonePage.routeName,
    builder: (_, __) => const SignInPhonePage(),
    routes: [
      GoRoute(
        path: SignInSmsCodePage.routeName,
        name: SignInSmsCodePage.routeName,
        builder: (_, __) => const SignInSmsCodePage(),
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
    initialLocation: '/${PerformingWithManagement.routeName}',
    // initialLocation: '/${OnboardingPage.routeName}',
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: '/${OnboardingPage.routeName}',
        name: OnboardingPage.routeName,
        builder: (_, __) => const OnboardingPage(),
        routes: [
          signUpRoute,
          signInRoute,
        ],
      ),
      setupRoute,
      GoRoute(
        path: '/${PerformingWithManagement.routeName}',
        name: PerformingWithManagement.routeName,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const PerformingWithManagement(),
        ),
        routes: [
          GoRoute(
            path: YoutubePage.routeName,
            name: YoutubePage.routeName,
            builder: (_, __) => const YoutubePage(),
          ),
          GoRoute(
            path: DatingWithManagementPage.routeName,
            name: DatingWithManagementPage.routeName,
            builder: (_, __) => const DatingWithManagementPage(),
          ),
        ],
      ),
      GoRoute(
        path: '/${ChatPage.routeName}',
        name: ChatPage.routeName,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const ChatPage(),
        ),
        routes: [
          GoRoute(
            path: '${ChatMessagePage.routeName}/:chatId',
            name: ChatMessagePage.routeName,
            builder: (context, state) {
              return ChatMessagePage(chatId: state.params['chatId']!);
            },
          )
        ],
      ),
      GoRoute(
        path: '/${ProfilePage.routeName}',
        name: ProfilePage.routeName,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const ProfilePage(),
        ),
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
