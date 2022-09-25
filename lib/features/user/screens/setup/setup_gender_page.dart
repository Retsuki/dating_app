import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/features/user/screens/setup/components/setup_select.dart';
import 'package:dating_app/features/user/screens/setup/setup_complete_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SetupGenderPage extends ConsumerWidget {
  const SetupGenderPage({super.key});

  static const routeName = 'setup-gender';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBackButton(title: l10n.gender),
      body: SafeArea(
        child: SetupSelect(
          itemCount: UserGender.values.length,
          itemBuilder: (context, index) {
            final gender = UserGender.values[index];
            return SetupSelectInkWell(
              onTap: () async {
                setupNotifier.genderTextController.text = gender.toStr();
                await setupNotifier.saveToFirestore();
                context.goNamed(SetupCompletePage.routeName);
              },
              text: gender.toStr(),
            );
          },
        ),
      ),
    );
  }
}
