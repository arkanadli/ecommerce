import 'package:ecommerce/common/style/spacing_styles.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import 'widgets/signup_button.dart';
import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sss'),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                GTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              // form input, remember me and forgot pass
              const signup_form(),
              const SizedBox(height: GSizes.spaceBtwSections),
              // Sign Up Button
              const signup_button(),
              // divider
              const SizedBox(height: GSizes.spaceBtwSections),
              const FormDivider(textTitle: GTexts.orSignUpWith),
              const SizedBox(height: GSizes.spaceBtwSections),
              // Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
