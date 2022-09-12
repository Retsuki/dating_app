import 'package:dating_app/components/app_bottom_natigation_bar.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/worry/screens/worry_answer/worry_answer_page.dart';
import 'package:dating_app/features/worry/screens/worry_post/worry_post_page.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class WorryOfficePage extends ConsumerWidget {
  const WorryOfficePage({super.key});

  static const routeName = 'worry-office';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppDefaultAppBar(
        title: l10n.warryPostOffice,
        actions: <Widget>[
          AppBarAction(
            icon: Icons.email,
            onTap: () => context.goNamed(WorryAnswerPage.routeName),
          ),
          const Gap(16),
          AppBarAction(
            icon: Icons.help,
            onTap: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: Column(
                    children: [
                      Assets.images.performingWithManagement.main
                          .image(scale: 4),
                      const Gap(24),
                      Text(
                        l10n.warryPostDescription,
                        textAlign: TextAlign.center,
                      ),
                      const Gap(64),
                      FilledButton(
                        text: l10n.letsWarryTalk,
                        onPressed: () =>
                            context.goNamed(WorryPostPage.routeName),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
