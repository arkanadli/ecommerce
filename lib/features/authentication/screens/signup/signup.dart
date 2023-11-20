import 'package:ecommerce/common/style/spacing_styles.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              // Title
              Text(
                GTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: GSizes.spaceBtwSections,
              ),

              // form input, remember me and forgot pass
              Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                            label: Text(GTexts.firstName),
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: GSizes.spaceBtwInputFields,
                      ),
                      Flexible(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                            label: Text(GTexts.lastName),
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: GSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(GTexts.username),
                      prefixIcon: Icon(Iconsax.user_edit),
                    ),
                  ),
                  const SizedBox(height: GSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(GTexts.email),
                      prefixIcon: Icon(Iconsax.direct),
                    ),
                  ),
                  const SizedBox(height: GSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(GTexts.phoneNo),
                      prefixIcon: Icon(Iconsax.call),
                    ),
                  ),
                  const SizedBox(height: GSizes.spaceBtwInputFields),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text(GTexts.password),
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(
                        width: GSizes.spaceBtwItems,
                      ),
                      RichText(
                        text: TextSpan(
                          text: '',
                          style: Theme.of(context).textTheme.bodySmall,
                          children: <TextSpan>[
                            const TextSpan(
                              text: '${GTexts.iAgreeTo} ',
                            ),
                            TextSpan(
                              text: '${GTexts.privacyPolicy} ',
                              style:
                                  Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: GColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: GColors.primary,
                                      ),
                            ),
                            const TextSpan(
                              text: '${GTexts.and} ',
                            ),
                            TextSpan(
                              text: '${GTexts.termsOfUse} ',
                              style:
                                  Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: GColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: GColors.primary,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: GSizes.spaceBtwSections,
              ),
              // Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(GTexts.createAccount),
                  onPressed: () {},
                ),
              ),
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
