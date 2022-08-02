import 'package:dating_app/screen/onboarding/onboarding_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'components/stylebook/book_button.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/${BookButton.routeName}',
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: '/${BookButton.routeName}',
        name: '/${BookButton.routeName}',
        builder: (context, _) => const OnboardingPage(),
      ),
    ],
  );
});
