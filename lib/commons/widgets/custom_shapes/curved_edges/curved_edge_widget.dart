import 'package:b_store/commons/widgets/custom_shapes/curved_edges/custom_edges.dart';
import 'package:flutter/material.dart';

class BCurvedEdgeWidget extends StatelessWidget {
  const BCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: BCustomCurvedEdges(), child: child);
  }
}
