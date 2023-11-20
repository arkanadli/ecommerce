import 'package:ecommerce/common/style/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.buttonTitle,
      this.onPressed});
  final String image;
  final String title;
  final String subTitle;
  final String buttonTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: GSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(image),
                width: GDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              // Title & sub Title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: GSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: GSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(GTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
