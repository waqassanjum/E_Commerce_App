import 'package:e_commerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screen/onboarding/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screen/onboarding/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screen/onboarding/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screen/onboarding/onboarding_skip.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // OnBoardingScreen Controller to handle Login
    final controller = Get.put(OnboardingController());
    return Scaffold(
        body: Stack(
      children: [
        // Horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subtitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subtitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subtitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),
        // skip button
        const OnBoardingSkip(),
        // dot navigation smooth page indicator
        const OnBoardingDotNavigation(),
        // circular button
        OnBoardingNextButton(),
      ],
    ));
  }
}
