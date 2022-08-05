import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'components/stylebook/book_back_button.dart';
import 'components/stylebook/book_button.dart';
import 'components/stylebook/book_text_form_field.dart';
import 'screen/onboarding/onboarding_page.dart';
import 'screen/sign_in/sign_in_page.dart';
import 'screen/sign_up/sign_up_page.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/${SignUpPage.routeName}',
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
        builder: (context, _) => const OnboardingPage(),
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
      )
    ],
  );
});
