import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'components/stylebook/book_button.dart';
import 'components/stylebook/book_text_form_field.dart';
import 'screen/onboarding/onboarding_page.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/${OnboardingPage.routeName}',
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
        path: '/${OnboardingPage.routeName}',
        name: '/${OnboardingPage.routeName}',
        builder: (context, _) => const OnboardingPage(),
      ),
    ],
  );
});
