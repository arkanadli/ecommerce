import 'package:flutter/material.dart';

class GCircularContainer extends StatelessWidget {
  const GCircularContainer({
    super.key,
    required this.width,
    required this.height,
    required this.padding,
    required this.colors,
    this.child,
  });

  final double width;
  final double height;
  final double padding;
  final Color colors;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width),
        color: colors,
      ),
      child: child,
    );
  }
}
