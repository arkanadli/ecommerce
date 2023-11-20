import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/utils/constants/sized_box.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headings
              Text(
                GTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              GSpacer.spaceBtwSectionsHeight,
              Text(
                GTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: GSizes.spaceBtwSections * 2,
              ),

              // Text Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: GTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(
                height: GSizes.spaceBtwSections,
              ),
              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(GTexts.submit),
                  onPressed: () => Get.off(() => const ResetPasswordScreen()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
