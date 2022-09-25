import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/features/area/data/area_repository.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/setup/components/setup_select.dart';
import 'package:dating_app/features/user/screens/setup/setup_city_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SetupPrefecturePage extends ConsumerWidget {
  const SetupPrefecturePage({super.key});

  static const routeName = 'setup-prefecture';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBackButton(title: l10n.areaOfResidence),
      body: SafeArea(
        child: SetupSelect(
          itemCount: prefectures.length,
          itemBuilder: (context, index) {
            final prefecture = prefectures[index];
            final prefectureName = prefecture.name;
            return SetupSelectInkWell(
              onTap: () async {
                setupNotifier.prefectureTextController.text = prefectureName;
                await setupNotifier.saveToFirestore();
                context.goNamed(SetupCityPage.routeName);
              },
              text: prefectureName,
            );
          },
        ),
      ),
    );
  }
}
