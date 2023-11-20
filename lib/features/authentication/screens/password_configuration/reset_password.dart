import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sized_box.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(GImages.deliveredEmailIllustration),
                width: GDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              // Title & sub Title
              Text(
                GTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: GSizes.spaceBtwItems),
              Text(
                GTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: GSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => Get.back(),
                  child: const Text(GTexts.done),
                ),
              ),
              GSpacer.spaceBtwItemsHeight,
              SizedBox(
                width: double.maxFinite,
                child: TextButton(
                  onPressed: () => Get.back(),
                  child: const Text(
                    GTexts.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
