import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_circular_next.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late OnBoardingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(OnBoardingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.updatePageIndicator(index);
              setState(() {});
            },
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
          const OnBoardingNavigation(),
          // Circular Button
          const CircularNextButton()
        ],
      ),
    );
  }
}
