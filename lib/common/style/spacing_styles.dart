import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class GSpacingStyle {
  GSpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: GSizes.appBarHeight,
    bottom: GSizes.defaultSpace,
    right: GSizes.defaultSpace,
    left: GSizes.defaultSpace,
  );
}
