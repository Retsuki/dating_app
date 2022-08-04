import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/router.dart';
import 'package:dating_app/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const ProviderScope(
        child: App(),
      ),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Dating App',
      theme: lightTheme(),
      // 多言語
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale != null) {
          final targetLocale = Locale(locale.languageCode);
          if (supportedLocales.contains(targetLocale)) {
            return locale;
          }
        }
        return supportedLocales.first;
      },
      // デバイスプレビュー
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // GoRouter
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
