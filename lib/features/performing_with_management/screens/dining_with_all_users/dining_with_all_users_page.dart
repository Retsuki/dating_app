import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DiningWithAllUsersPage extends StatelessWidget {
  const DiningWithAllUsersPage({super.key});

  static const routeName = 'dining-with-all-users';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.diningWithAllUsers),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Assets.images.performingWithManagement.main.image(scale: 4),
            const Gap(24),
            Text(
              l10n.diningWithAllUsersMessage,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.drawThisMonthLottery,
          onPressed: () async {},
        ),
      ),
    );
  }
}
