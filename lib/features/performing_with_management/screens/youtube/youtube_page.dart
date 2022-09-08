import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage({super.key});

  static const routeName = 'youtube';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.withYoutube),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Assets.images.performingWithManagement.main.image(scale: 4),
            const Gap(24),
            Text(
              l10n.withYoutubeMessage,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: FilledButton(
          text: l10n.performanceRequest,
          onPressed: () async {},
        ),
      ),
    );
  }
}
