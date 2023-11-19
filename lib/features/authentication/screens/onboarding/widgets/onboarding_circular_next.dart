import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CircularNextButton extends StatelessWidget {
  const CircularNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    OnBoardingController controller = OnBoardingController.instance;
    final isDark = GHelperFunctions.isDarkMode(context);

    return Positioned(
        right: GSizes.defaultSpace,
        bottom: GDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {
            OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: isDark ? GColors.primary : GColors.black),
          child: const Icon(
            Iconsax.arrow_right_3,
            size: GSizes.iconMd,
          ),
        ));
  }
}
