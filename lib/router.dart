// ignore_for_file: deprecated_member_use

import 'package:dating_app/components/app_loading_layout.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/authentication/screens/sign_in/sign_in_phone_page.dart';
import 'package:dating_app/features/authentication/screens/sign_in/sign_in_sms_code_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_email_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_phone_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_sms_code_page.dart';
import 'package:dating_app/features/chat/screens/chat/chat_page.dart';
import 'package:dating_app/features/chat/screens/chat_message/chat_message_page.dart';
import 'package:dating_app/features/home/screens/home_page.dart';
import 'package:dating_app/features/home/screens/user_detail/user_detail_page.dart';
import 'package:dating_app/features/interest/screens/setup_interest_page.dart';
import 'package:dating_app/features/onboarding/screens/onboarding_page.dart';
import 'package:dating_app/features/performing_with_management/screens/dating_with_management.dart/dating_with_management_page.dart';
import 'package:dating_app/features/performing_with_management/screens/dining_with_all_users/dining_with_all_users_page.dart';
import 'package:dating_app/features/performing_with_management/screens/performing_with_management_page.dart';
import 'package:dating_app/features/performing_with_management/screens/youtube/youtube_page.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/profile/profile/profile_page.dart';
import 'package:dating_app/features/user/screens/profile/profile_image/profile_image_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_birthday_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_city_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_complete_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_gender_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_height_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_name_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_occupation_page.dart';
import 'package:dating_app/features/user/screens/setup/setup_prefecture_page.dart';
import 'package:dating_app/features/worry/screens/worry_answer/worry_answer_page.dart';
import 'package:dating_app/features/worry/screens/worry_office/worry_office_page.dart';
import 'package:dating_app/features/worry/screens/worry_post/worry_post_page.dart';
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
            path: SetupPrefecturePage.routeName,
            name: SetupPrefecturePage.routeName,
            builder: (context, _) => const SetupPrefecturePage(),
            routes: [
              GoRoute(
                path: SetupCityPage.routeName,
                name: SetupCityPage.routeName,
                builder: (context, _) => const SetupCityPage(),
                routes: [
                  GoRoute(
                    path: SetupGenderPage.routeName,
                    name: SetupGenderPage.routeName,
                    builder: (context, _) => const SetupGenderPage(),
                    routes: [
                      GoRoute(
                        path: SetupHeightPage.routeName,
                        name: SetupHeightPage.routeName,
                        builder: (context, _) => const SetupHeightPage(),
                        routes: [
                          GoRoute(
                            path: SetupOccupationPage.routeName,
                            name: SetupOccupationPage.routeName,
                            builder: (context, _) =>
                                const SetupOccupationPage(),
                            routes: [
                              GoRoute(
                                path: SetupInterest.routeName,
                                name: SetupInterest.routeName,
                                builder: (context, _) => const SetupInterest(),
                                routes: [
                                  GoRoute(
                                    path: SetupCompletePage.routeName,
                                    name: SetupCompletePage.routeName,
                                    builder: (context, _) =>
                                        const SetupCompletePage(),
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
              ),
            ],
          ),
        ],
      ),
    ],
  );

  return GoRouter(
    refreshListenable: _RouterNotifier(ref),
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) {
      final isRoot = state.subloc == '/';
      final isSignedIn = ref.read(isSignedInProvider).value;
      final isCompletedSetup = ref.read(isCompletedSetupProvider).value;

      if (!isRoot || isSignedIn == null || isCompletedSetup == null) {
        return null;
      }

      // サインインしているか
      if (!isSignedIn) {
        return state.namedLocation(OnboardingPage.routeName);
      }

      // セットアップが完了しているか
      if (!isCompletedSetup) {
        return state.namedLocation(SetupNamePage.routeName);
      }

      // セットアップが終わっているか
      return state.namedLocation(HomePage.routeName);
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const LoadingOverlay(),
      ),
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
        path: '/${HomePage.routeName}',
        name: HomePage.routeName,
        pageBuilder: (context, state) => NoTransitionPage<dynamic>(
          key: state.pageKey,
          child: const HomePage(),
        ),
        routes: [
          GoRoute(
            path: '${UserDetailPage.routeName}/:userId',
            name: UserDetailPage.routeName,
            builder: (_, state) => UserDetailPage(
              userId: state.params['userId']!,
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/${WorryOfficePage.routeName}',
        name: WorryOfficePage.routeName,
        pageBuilder: (context, state) => NoTransitionPage<dynamic>(
          key: state.pageKey,
          child: const WorryOfficePage(),
        ),
        routes: [
          GoRoute(
            path: WorryAnswerPage.routeName,
            name: WorryAnswerPage.routeName,
            builder: (_, __) => const WorryAnswerPage(),
          ),
          GoRoute(
            path: WorryPostPage.routeName,
            name: WorryPostPage.routeName,
            builder: (_, __) => const WorryPostPage(),
          ),
        ],
      ),
      GoRoute(
        path: '/${PerformingWithManagement.routeName}',
        name: PerformingWithManagement.routeName,
        pageBuilder: (context, state) => NoTransitionPage<dynamic>(
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
          GoRoute(
            path: DiningWithAllUsersPage.routeName,
            name: DiningWithAllUsersPage.routeName,
            builder: (_, __) => const DiningWithAllUsersPage(),
          ),
        ],
      ),
      GoRoute(
        path: '/${ChatPage.routeName}',
        name: ChatPage.routeName,
        pageBuilder: (context, state) => NoTransitionPage<dynamic>(
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
        pageBuilder: (context, state) => NoTransitionPage<dynamic>(
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

class _RouterNotifier extends ChangeNotifier {
  _RouterNotifier(Ref ref) {
    for (final provider in [
      isSignedInProvider,
      isCompletedSetupProvider,
    ]) {
      ref.listen(provider, (_, __) {
        notifyListeners();
      });
    }
  }
}
