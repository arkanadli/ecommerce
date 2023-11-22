import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class GAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSizes.md),
      child: AppBar(
        automaticallyImplyLeading: showBackArrow,
        leading: leadingIcon != null
            ? IconButton(
                icon: Icon(leadingIcon),
                onPressed: leadingOnPressed,
              )
            : null,
        actions: actions,
        title: title,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(GDeviceUtils.getAppBarHeight());
}
