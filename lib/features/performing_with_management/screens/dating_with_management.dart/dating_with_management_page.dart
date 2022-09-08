import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DatingWithManagementPage extends StatelessWidget {
  const DatingWithManagementPage({super.key});

  static const routeName = 'dating-with-management';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.datingWithManagement),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Assets.images.performingWithManagement.main.image(scale: 4),
            const Gap(24),
            Text(
              l10n.datingWithManagementMessage,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.message,
          onPressed: () async {},
        ),
      ),
    );
  }
}
