import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GSearchContainer extends StatelessWidget {
  const GSearchContainer({
    super.key,
    required this.text,
    required this.icon,
    required this.showBorder,
    required this.showBackground,
  });

  final String text;
  final IconData icon;
  final bool showBorder, showBackground;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = GHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSizes.defaultSpace),
      child: Container(
        width: GDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(GSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? isDarkMode
                  ? GColors.dark
                  : GColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
          border: Border.all(
            width: showBorder ? 1.0 : 0,
            color: GColors.grey,
          ),
        ),
        child: Row(children: [
          Icon(
            icon,
            color: isDarkMode ? GColors.lightGrey : GColors.darkerGrey,
          ),
          const SizedBox(
            width: GSizes.spaceBtwItems,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ]),
      ),
    );
  }
}
