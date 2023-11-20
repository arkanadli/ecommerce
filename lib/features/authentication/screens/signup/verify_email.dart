import 'package:ecommerce/common/widgets/success/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(const LoginScreen());
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(GImages.deliveredEmailIllustration),
                width: GDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              // Title & sub Title
              Text(
                GTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: GSizes.spaceBtwItems),
              Text(
                GTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSizes.spaceBtwItems),
              Text(
                'contact support : arcanery.support@corp.id',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      SuccessScreen(
                        image: GImages.staticSuccessIllustration,
                        title: GTexts.yourAccountCreatedTitle,
                        subTitle: GTexts.yourAccountCreatedSubTitle,
                        buttonTitle: GTexts.tContinue,
                        onPressed: () {
                          Get.offAll(
                            const LoginScreen(),
                          );
                        },
                      ),
                    );
                  },
                  child: const Text(GTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: GSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.maxFinite,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(GTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
