import 'package:dating_app/components/app_bottom_navigation_bar.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/performing_with_management/screens/dating_with_management.dart/dating_with_management_page.dart';
import 'package:dating_app/features/performing_with_management/screens/dining_with_all_users/dining_with_all_users_page.dart';
import 'package:dating_app/features/performing_with_management/screens/youtube/youtube_page.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class PerformingWithManagement extends StatelessWidget {
  const PerformingWithManagement({super.key});

  static const routeName = 'performing-with-management';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    const itemSpacer = 24.0;
    return Scaffold(
      appBar: AppDefaultAppBar(title: l10n.leisurelyManagement),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Assets.images.performingWithManagement.main.image(scale: 4),
          const Gap(itemSpacer),
          Text(
            l10n.leisurelyManagementMessage,
            textAlign: TextAlign.center,
          ),
          const Gap(itemSpacer),
          _Card(
            icon: Icons.radio,
            title: l10n.withYoutube,
            subTitle: l10n.iDoRadioOnYoutube,
            location: YoutubePage.routeName,
          ),
          const Gap(itemSpacer),
          _Card(
            icon: Icons.volunteer_activism,
            title: l10n.datingWithManagement,
            subTitle: l10n.theManagementIsOneOfTheUsers,
            location: DatingWithManagementPage.routeName,
          ),
          const Gap(itemSpacer),
          _Card(
            icon: Icons.radio,
            title: l10n.diningWithAllUsers,
            subTitle: l10n.dinnerParty,
            location: DiningWithAllUsersPage.routeName,
          ),
          const Gap(40)
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
      extendBody: true,
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.location,
  });

  final IconData icon;
  final String title;
  final String subTitle;
  final String location;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () => context.goNamed(location),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 380,
          height: 128,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  icon,
                  color: colorScheme.primary,
                ),
              ),
              const Gap(20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subTitle,
                    style: textTheme.bodySmall!.copyWith(
                      color: Colors.black54,
                    ),
                  ),
                  Text(title, style: textTheme.titleLarge),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
