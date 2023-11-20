import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late bool checkboxValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkboxValue = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email form
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: GTexts.email,
              ),
            ),
            const SizedBox(
              height: GSizes.spaceBtwInputFields,
            ),

            // Password form
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: GTexts.password,
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
              ),
            ),
            const SizedBox(
              height: GSizes.spaceBtwInputFields / 2,
            ),
            // Remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: checkboxValue,
                      onChanged: (value) {
                        setState(() {
                          checkboxValue = !checkboxValue;
                        });
                      },
                    ),
                    const Text(GTexts.rememberMe),
                  ],
                ),
                // Forget Password
                TextButton(
                  onPressed: () {},
                  child: const Text(GTexts.forgetPassword),
                )
              ],
            ),
            const SizedBox(
              height: GSizes.spaceBtwSections,
            ),
            // sign in button
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(GTexts.signIn),
              ),
            ),
            const SizedBox(
              height: GSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(const SignUpScreen());
                },
                child: const Text(GTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
