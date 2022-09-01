import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/user/screens/profile/components/profile_item_list.dart';
import 'package:dating_app/features/user/screens/profile/profile/components/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: const AppDefaultAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const ProfileImage(),
              const Gap(12),
              Text('米一烈希', style: textTheme.displaySmall),
              const Gap(24),
              const Divider(height: 0),
              const ProfileItemList()
            ],
          ),
        ),
      ),
    );
  }
}
