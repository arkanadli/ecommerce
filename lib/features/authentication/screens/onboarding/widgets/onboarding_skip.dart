import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: GSizes.appBarHeight,
      right: GSizes.defaultSpace,
      child: TextButton(
        child: const Text('Skip'),
        onPressed: () {},
      ),
    );
  }
}
