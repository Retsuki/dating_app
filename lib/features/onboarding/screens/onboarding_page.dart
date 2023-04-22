import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/features/authentication/screens/sign_in/sign_in_phone_page.dart';
import 'package:dating_app/features/authentication/screens/sign_up/sign_up_phone_page.dart';
import 'package:dating_app/features/onboarding/providers/onboarding_provider.dart';
import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  static const routeName = 'onboarding';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
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

    const vertical = 20.0;
    const horizontal = 16.0;

    return Scaffold(
      bottomSheet: AppBottomSheet(
        child: Row(
          children: [
            Expanded(
              child: GhostButton(
                text: l10n.signIn,
                onPressed: () {
                  context.goNamed(SignInPhonePage.routeName);
                },
              ),
            ),
            const Gap(12),
            Expanded(
              child: AppFilledButton(
                text: l10n.signUp,
                onPressed: () {
                  context.goNamed(SignUpPhonePage.routeName);
                },
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: vertical),
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
              const Gap(48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontal),
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
            ],
          ),
        ),
      ),
    );
  }
}
