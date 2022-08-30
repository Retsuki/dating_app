import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/platform/data/app_package_info_provider.dart';
import 'package:dating_app/firebase_options.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/router.dart';
import 'package:dating_app/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final packageInfo = await PackageInfo.fromPlatform();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => ProviderScope(
        overrides: [
          appPackageInfoProvider.overrideWithValue(AppPackageInfo(packageInfo)),
        ],
        child: Consumer(
          builder: (context, ref, child) {
            // NOTE: 適切な初回フロー確率までAuth/Userをここで読み込む
            ref.watch(authUserProvider);

            return const App();
          },
        ),
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
