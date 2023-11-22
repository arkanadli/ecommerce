import 'package:ecommerce/common/widgets/custom_curves/curved_edges.dart';
import 'package:flutter/material.dart';

class GCurvedEdgeWidget extends StatelessWidget {
  const GCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: GCustomCurvedEdges(), child: child);
  }
}
