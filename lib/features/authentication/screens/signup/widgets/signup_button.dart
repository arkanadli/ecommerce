import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

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
        onPressed: () {},
      ),
    );
  }
}
