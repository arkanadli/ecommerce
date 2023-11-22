import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GSectionHeading extends StatelessWidget {
  const GSectionHeading({
    super.key,
    this.textColor = GColors.textWhite,
    this.showButton = true,
    required this.text,
    this.textButton = 'View All',
    this.onPressed,
  });

  final Color textColor;
  final bool showButton;
  final String text;
  final String textButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton)
          TextButton(
            onPressed: onPressed,
            child: Text(textButton),
          ),
      ],
    );
  }
}
