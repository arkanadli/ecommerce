import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signup_button extends StatelessWidget {
  const signup_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: const Text(GTexts.createAccount),
        onPressed: () {
          Get.to(() => const VerifyEmailScreen());
        },
      ),
    );
  }
}
