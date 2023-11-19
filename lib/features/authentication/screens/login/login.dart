import 'package:ecommerce/common/style/spacing_styles.dart';
import 'package:ecommerce/common/widgets/login_signup/divider.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/login_form.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: GSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title, and sub title
              LoginHeader(),
              // form input, remember me and forgot pass
              LoginForm(),
              // divider
              FormDivider(textTitle: GTexts.orSignInWith),
              SizedBox(height: GSizes.spaceBtwSections),
              // Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
