import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/features/user/screens/profile/profile_image/profile_image_page.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfileImage extends ConsumerWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // TODO_R: profile_state_notifier的なものにまとめた方が良さそう、、、
    final userState = ref.watch(userStreamProvider).value;
    final user = userState?.data();
    if (user == null) {
      return const SizedBox.shrink();
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Assets.images.profile.profile.image(scale: 4),
        Material(
          borderRadius: BorderRadius.circular(80),
          clipBehavior: Clip.antiAlias,
          color: Colors.transparent,
          child: Ink.image(
            fit: BoxFit.cover,
            width: 120,
            height: 120,
            image: user.mainImage == null
                ? Assets.images.profile.profile.image(scale: 4).image
                : CachedNetworkImageProvider(
                    user.mainImage!,
                  ),
            child: InkWell(
              onTap: () => context.goNamed(ProfileImagePage.routeName),
            ),
          ),
        ),
        Positioned(
          right: -5,
          bottom: -5,
          child: CircleAvatar(
            backgroundColor: colorScheme.primary,
            child: Icon(
              Icons.camera_alt_rounded,
              size: 24,
              color: colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
