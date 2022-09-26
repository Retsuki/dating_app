import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/features/occupation/applications/occupation_provider.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/setup/components/setup_select.dart';
import 'package:dating_app/features/user/screens/setup/setup_complete_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SetupOccupationPage extends ConsumerWidget {
  const SetupOccupationPage({super.key});

  static const routeName = 'setup-occupation';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final masterOccupations = ref.watch(masterOccupationProvider);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBackButton(title: l10n.occupation),
      body: SafeArea(
        child: SetupSelect(
          itemCount: masterOccupations.length,
          itemBuilder: (context, index) {
            final occupation = masterOccupations[index];
            final occupationName = occupation.entity.name;
            return SetupSelectInkWell(
              onTap: () async {
                setupNotifier.occupationTextController.text = occupationName;
                await setupNotifier.saveToFirestore();
                context.goNamed(SetupCompletePage.routeName);
              },
              text: occupationName,
            );
          },
        ),
      ),
    );
  }
}
