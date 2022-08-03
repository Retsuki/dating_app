import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/screen/onboarding/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  static const routeName = 'onboarding';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final onboardingImages = [
      Assets.images.onboarding.image1.image(
        scale: 4,
        fit: BoxFit.fill,
      ),
      Assets.images.onboarding.image2.image(
        scale: 4,
        fit: BoxFit.fill,
      ),
      Assets.images.onboarding.image3.image(
        scale: 4,
        fit: BoxFit.fill,
      ),
    ];
    final onboadingTextList = [
      'Find people who match with you',
      'Easily message & call the people you like',
      'Dont wait anymore, find out your soul mate now',
    ];

    final onboardingIndexState = ref.watch(onboardingIndexProvider);
    final onboardingIndexNotifier = ref.watch(onboardingIndexProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: onboardingImages.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: 265,
                  height: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: onboardingImages[index],
                );
              },
              options: CarouselOptions(
                height: 360,
                viewportFraction: 0.75,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                onPageChanged: (index, reason) {
                  onboardingIndexNotifier.update((state) => index);
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                onboadingTextList[onboardingIndexState],
                style: textTheme.displayMedium!.copyWith(
                  height: 1.3,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(18),
            AnimatedSmoothIndicator(
              activeIndex: onboardingIndexState,
              count: onboardingImages.length,
              effect: ColorTransitionEffect(
                dotWidth: 6,
                dotHeight: 6,
                activeDotColor: colorScheme.primary,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FilledButton(
                text: '次へ',
                type: Type.round,
                onPressed: () {},
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
