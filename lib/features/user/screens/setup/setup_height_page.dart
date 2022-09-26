import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/data/height.dart';
import 'package:dating_app/features/user/screens/setup/components/setup_select.dart';
import 'package:dating_app/features/user/screens/setup/setup_occupation_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SetupHeightPage extends ConsumerWidget {
  const SetupHeightPage({super.key});

  static const routeName = 'setup-height';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBackButton(title: l10n.height),
      body: SafeArea(
        child: SetupSelect(
          itemCount: heightList.length,
          itemBuilder: (context, index) {
            final height = heightList[index];
            return SetupSelectInkWell(
              onTap: () async {
                setupNotifier.heightTextController.text = height.toString();
                await setupNotifier.saveToFirestore();
                context.goNamed(SetupOccupationPage.routeName);
              },
              text: l10n.cm(height.toInt()),
            );
          },
        ),
      ),
    );
  }
}
