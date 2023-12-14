import 'package:b_store/commons/widgets/container/circular_container.dart';
import 'package:b_store/commons/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:b_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BPrimaryHeaderContainer extends StatelessWidget {
  const BPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BCurvedEdgeWidget(
      child: Container(
        color: BColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            const Positioned(
              top: -150,
              right: -250,
              child: BCirularContainer(),
            ),
            const Positioned(
              top: 100,
              right: -300,
              child: BCirularContainer(),
            ),
            child
          ],
        ),
      ),
    );
  }
}
