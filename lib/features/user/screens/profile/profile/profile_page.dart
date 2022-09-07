import 'package:dating_app/components/app_bottom_natigation_bar.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/features/user/screens/profile/profile/components/profile_image.dart';
import 'package:dating_app/features/user/screens/profile/profile/components/profile_item_list.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  static const routeName = 'profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    // TODO_R: profile_state_notifier的なものにまとめた方が良さそう、、、
    final userState = ref.watch(userStreamProvider).value;
    final user = userState?.data();
    if (user == null) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      appBar: AppDefaultAppBar(
        title: l10n.profile,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: colorScheme.primary,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const ProfileImage(),
              const Gap(12),
              Text(user.nickName, style: textTheme.displaySmall),
              const Gap(24),
              const Divider(height: 0),
              const ProfileItemList()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
