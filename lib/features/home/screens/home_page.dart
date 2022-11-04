import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/components/app_bottom_navigation_bar.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/features/home/applications/home/home_provider.dart';
import 'package:dating_app/features/home/applications/user_detail/user_detail_provider.dart';
import 'package:dating_app/features/home/screens/user_detail/user_detail_page.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/date_formatter/date_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const routeName = 'home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final userList = ref.watch(userListProvider).value;
    final userDetail = ref.watch(userDetailProvider.notifier);
    if (userList == null) {
      // TODO(Rchan): ローディングにする
      return const SizedBox.shrink();
    }

    return Scaffold(
      appBar: AppDefaultAppBar(title: l10n.home),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: 180 / 244,
          ),
          itemCount: userList.length,
          itemBuilder: (context, index) {
            final userDoc = userList[index];
            final user = userDoc.entity;
            return Material(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(40),
              child: Ink.image(
                fit: user.mainImage == null ? BoxFit.contain : BoxFit.cover,
                height: 244,
                image: user.mainImage == null
                    ? Assets.images.profile.uncle.image().image
                    : CachedNetworkImageProvider(
                        user.mainImage!,
                      ),
                child: InkWell(
                  onTap: () {
                    userDetail.update((state) => user);
                    context.goNamed(
                      UserDetailPage.routeName,
                      params: {'userId': userDoc.id},
                    );
                  },
                  child: _NameAndAge(user: user),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
      extendBody: true,
    );
  }
}

class _NameAndAge extends StatelessWidget {
  const _NameAndAge({
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.transparent,
                  colorScheme.primary.withOpacity(0),
                  colorScheme.primary.withOpacity(0.2),
                  colorScheme.primary.withOpacity(0.4),
                  colorScheme.primary.withOpacity(0.6),
                  colorScheme.primary.withOpacity(0.8),
                  colorScheme.primary.withOpacity(1),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 32,
          child: Row(
            children: [
              Text(
                l10n.nickNameAndAge(
                  user.nickName,
                  birthdayStrToAge(user.birthday!),
                ),
                style: textTheme.headlineSmall!.copyWith(
                  color: colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
