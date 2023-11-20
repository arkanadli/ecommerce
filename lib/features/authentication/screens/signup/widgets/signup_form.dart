import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class signup_form extends StatefulWidget {
  const signup_form({
    super.key,
  });

  @override
  State<signup_form> createState() => _signup_formState();
}

class _signup_formState extends State<signup_form> {
  late bool checkboxValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkboxValue = false;
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = GHelperFunctions.isDarkMode(context);
    return Column(
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
                value: checkboxValue,
                onChanged: (value) {
                  checkboxValue = !checkboxValue;
                  setState(() {});
                },
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
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: isDarkMode ? GColors.white : GColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              isDarkMode ? GColors.white : GColors.primary,
                        ),
                  ),
                  const TextSpan(
                    text: '${GTexts.and} ',
                  ),
                  TextSpan(
                    text: '${GTexts.termsOfUse} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: isDarkMode ? GColors.white : GColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              isDarkMode ? GColors.white : GColors.primary,
                        ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
