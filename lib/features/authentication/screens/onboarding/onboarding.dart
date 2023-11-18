import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            children: const [
              Padding(
                padding: EdgeInsets.all(GSizes.defaultSpace),
                child: OnBoardingPage(
                  image: GImages.onBoardingImage1,
                  title: GTexts.onBoardingTitle1,
                  subTitle: GTexts.onBoardingSubTitle1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(GSizes.defaultSpace),
                child: OnBoardingPage(
                  image: GImages.onBoardingImage2,
                  title: GTexts.onBoardingTitle2,
                  subTitle: GTexts.onBoardingSubTitle2,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(GSizes.defaultSpace),
                child: OnBoardingPage(
                  image: GImages.onBoardingImage3,
                  title: GTexts.onBoardingTitle3,
                  subTitle: GTexts.onBoardingSubTitle3,
                ),
              )
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),
          // Dot Navigation SmoothPageIndicator
          SmoothPageIndicator(controller: PageController(), count: 3)
          // Circular Button
        ],
      ),
    );
  }
}
