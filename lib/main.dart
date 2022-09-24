import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/firebase_options.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/router.dart';
import 'package:dating_app/theme.dart';
import 'package:dating_app/utils/app/package_info/package_info_provider.dart';
import 'package:dating_app/utils/logger.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    // Firebase初期化
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    // 縦向き固定
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    // ステータスバー、ナビゲーションバーを表示
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge),
  ]);

  // NOTE: envによってemulatorに接続するかを制御
  if (const bool.fromEnvironment('USE_FIREBASE_EMULATOR')) {
    await _configFirebaseAuth();
    await _configFirebaseStorage();
    _configFirebaseFirestore();
  }
  final packageInfo = await PackageInfo.fromPlatform();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => ProviderScope(
        overrides: [
          packageInfoProvider
              .overrideWithValue(AppPackageInfo(packageInfo).packageInfo),
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
      routerConfig: router,
    );
  }
}

Future<void> _configFirebaseAuth() async {
  const configHost = String.fromEnvironment('FIREBASE_EMULATOR_URL');
  const configPort = int.fromEnvironment('AUTH_EMULATOR_PORT');

  final defaultHost = Platform.isAndroid ? '10.0.2.2' : 'localhost';
  final host = configHost.isNotEmpty ? configHost : defaultHost;
  const port = configPort != 0 ? configPort : 9099;
  await FirebaseAuth.instance.useAuthEmulator(host, port);
  logger.fine('Using Firebase Auth emulator on $host:$port');
}

Future<void> _configFirebaseStorage() async {
  const configHost = String.fromEnvironment('FIREBASE_EMULATOR_URL');
  const configPort = int.fromEnvironment('STORAGE_EMULATOR_PORT');

  final defaultHost = Platform.isAndroid ? '10.0.2.2' : 'localhost';
  final host = configHost.isNotEmpty ? configHost : defaultHost;
  const port = configPort != 0 ? configPort : 9199;
  await FirebaseStorage.instance.useStorageEmulator(host, port);
  logger.fine('Using Firebase Storage emulator on $host:$port');
}

void _configFirebaseFirestore() {
  const configHost = String.fromEnvironment('FIREBASE_EMULATOR_URL');
  const configPort = int.fromEnvironment('FIRESTORE_EMULATOR_PORT');

  final defaultHost = Platform.isAndroid ? '10.0.2.2' : 'localhost';
  final host = configHost.isNotEmpty ? configHost : defaultHost;
  const port = configPort != 0 ? configPort : 8080;
  FirebaseFirestore.instance.settings = Settings(
    host: '$host:$port',
    sslEnabled: false,
    persistenceEnabled: false,
  );
  logger.fine('Using Firebase Firestore emulator on $host:$port');
}
