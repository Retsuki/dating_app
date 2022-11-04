import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/features/home/applications/user_detail/user_detail_provider.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserProfileImages extends HookConsumerWidget {
  const UserProfileImages({
    super.key,
  });

  List<String> getUserImageList(User user) {
    final imageList = [
      user.mainImage,
      user.subImage1,
      user.subImage2,
      user.subImage3
    ];

    return imageList.fold([], (previousValue, image) {
      if (image.isNullOrEmpty) {
        return previousValue;
      }

      previousValue.add(image!);
      return previousValue;
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userDetailProvider);
    if (user == null) {
      return const SizedBox.shrink();
    }

    final userImageList = getUserImageList(user);
    final userImageIndexState = useState(0);

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        _CarouselSliderImages(
          userImageList: userImageList,
          userImageIndexState: userImageIndexState,
        ),
        _IndicatorAndButtons(
          userImageIndexState: userImageIndexState,
          userImageListLength: userImageList.length,
        )
      ],
    );
  }
}

class _CarouselSliderImages extends StatelessWidget {
  const _CarouselSliderImages({
    required this.userImageList,
    required this.userImageIndexState,
  });

  final List<String> userImageList;
  final ValueNotifier<int> userImageIndexState;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final userImageListLength = userImageList.length;

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: userImageListLength,
          itemBuilder: (context, index, _) {
            return Ink.image(
              fit: userImageList.isEmpty ? BoxFit.contain : BoxFit.cover,
              width: 428,
              height: 640,
              image: userImageList.isEmpty
                  ? Assets.images.profile.uncle.image().image
                  : CachedNetworkImageProvider(
                      userImageList[index],
                    ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 256, // 640 / 3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.transparent,
                            primaryColor.withOpacity(0),
                            primaryColor.withOpacity(0.2),
                            primaryColor.withOpacity(0.4),
                            primaryColor.withOpacity(0.6),
                            primaryColor.withOpacity(0.8),
                            primaryColor.withOpacity(1),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 640,
            viewportFraction: 1,
            autoPlay: userImageList.isNotEmpty,
            autoPlayInterval: const Duration(seconds: 2),
            onPageChanged: (index, reason) {
              userImageIndexState.value = index;
            },
          ),
        ),
        // NOTE: Stackからはみ出したのWidgetをタップしたいので、そのWidget部分の高さを確保した
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}

class _IndicatorAndButtons extends StatelessWidget {
  const _IndicatorAndButtons({
    required this.userImageIndexState,
    required this.userImageListLength,
  });

  final ValueNotifier<int> userImageIndexState;
  final int userImageListLength;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Positioned(
      bottom: -16,
      child: Column(
        children: [
          AnimatedSmoothIndicator(
            activeIndex: userImageIndexState.value,
            count: userImageListLength,
            effect: ColorTransitionEffect(
              dotWidth: 6,
              dotHeight: 6,
              activeDotColor: primaryColor,
            ),
          ),
          const Gap(88),
          Row(
            children: [
              _LikeButton(
                icon: Icons.close,
                onTap: () {},
              ),
              const Gap(10),
              _LikeButton(
                icon: Icons.favorite,
                iconSize: 40,
                padding: 28,
                onTap: () {},
              ),
              const Gap(10),
              _LikeButton(
                icon: Icons.done,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _LikeButton extends StatelessWidget {
  const _LikeButton({
    required this.icon,
    this.iconSize = 28,
    this.padding = 26,
    required this.onTap,
  });

  final IconData icon;
  final double iconSize;
  final double padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final primaryColor = colorScheme.primary;
    final onPrimaryColor = colorScheme.onPrimary;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.25),
            blurRadius: 32,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Material(
        color: onPrimaryColor,
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Icon(
              icon,
              size: iconSize,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
