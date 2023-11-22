import 'package:ecommerce/common/widgets/custom_curves/g_curved_edge_widget.dart';
import 'package:ecommerce/common/widgets/custom_shapes/g_circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class GPrimaryHeaderContainer extends StatelessWidget {
  const GPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GCurvedEdgeWidget(
      child: Container(
        width: GDeviceUtils.getScreenWidth(context),
        color: GColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 350,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: GCircularContainer(
                  width: 400,
                  height: 400,
                  padding: 0,
                  colors: GColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: GCircularContainer(
                  width: 400,
                  height: 400,
                  padding: 0,
                  colors: GColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
