import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GCartCounterIcon extends StatelessWidget {
  const GCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = GColors.white,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: GColors.black.withOpacity(1),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: GColors.white, fontSizeFactor: 0.9),
              ),
            ),
          ),
        )
      ],
    );
  }
}
