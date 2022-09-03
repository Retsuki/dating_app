import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/un_focus_on_tap.dart';
import 'package:dating_app/features/user/applications/profile/profile_image/profile_image_state_notifier.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfileImagePage extends ConsumerWidget {
  const ProfileImagePage({super.key});

  static const routeName = 'profile-image';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final user = ref.watch(userStreamProvider).value?.data();
    if (user == null) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      appBar: AppBackButton(title: l10n.addPhotos),
      body: UnfocusOnTap(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              children: [
                Text(l10n.addPhotosMessage),
                const Gap(24),
                // TODO_R: for文で表示できるように、、、
                Row(
                  children: [
                    _ProfileImage(
                      index: 0,
                      imageUrl: user.mainImage,
                    ),
                    const SizedBox(width: 16),
                    _ProfileImage(
                      index: 1,
                      imageUrl: user.subImage1,
                    ),
                  ],
                ),
                const Gap(16),
                Row(
                  children: [
                    _ProfileImage(
                      index: 2,
                      imageUrl: user.subImage2,
                    ),
                    const SizedBox(width: 16),
                    _ProfileImage(
                      index: 3,
                      imageUrl: user.subImage3,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileImage extends ConsumerWidget {
  const _ProfileImage({
    required this.index,
    required this.imageUrl,
  });

  final int index;
  final String? imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final child = imageUrl.isNullOrEmpty
        ? DottedBorder(
            dashPattern: const [8, 4],
            color: colorScheme.primary,
            strokeCap: StrokeCap.round,
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            child: InkWell(
              onTap: () => ref
                  .read(profileImageStateNotifierProvider.notifier)
                  .setPhoto(context: context, index: index),
              child: Container(
                height: 230,
                decoration: BoxDecoration(
                  color: colorScheme.primary.withOpacity(0.1),
                ),
                child: Center(
                  child:
                      Assets.images.setup.setupPhoto.addPhoto.image(scale: 4),
                ),
              ),
            ),
          )
        : Material(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(12),
            child: Ink.image(
              fit: BoxFit.cover,
              height: 240,
              image: CachedNetworkImageProvider(
                imageUrl!,
              ),
              child: InkWell(
                onTap: () => ref
                    .read(profileImageStateNotifierProvider.notifier)
                    .setPhoto(
                      context: context,
                      index: index,
                      isExistImage: true,
                    ),
              ),
            ),
          );

    return Flexible(
      fit: FlexFit.tight,
      child: child,
    );
  }
}
