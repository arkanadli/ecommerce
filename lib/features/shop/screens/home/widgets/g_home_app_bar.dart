import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/cart/g_cart_counter_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class GHomeAppBar extends StatelessWidget {
  const GHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: GColors.grey),
          ),
          Text(
            'Arkan Adli',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: GColors.white),
          ),
        ],
      ),
      actions: [
        GCartCounterIcon(
          onPressed: () {},
        )
      ],
    );
  }
}
