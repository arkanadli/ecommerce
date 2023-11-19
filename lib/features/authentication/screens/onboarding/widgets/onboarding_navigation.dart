import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatefulWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  State<OnBoardingNavigation> createState() => _OnBoardingNavigationState();
}

class _OnBoardingNavigationState extends State<OnBoardingNavigation> {
  late OnBoardingController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = OnBoardingController.instance;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = GHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: GDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: GSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: (index) {
          controller.dotNavigationClick(index);
          print(index);
        },
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? GColors.light : GColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
