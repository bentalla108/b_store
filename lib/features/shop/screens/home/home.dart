import 'package:b_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../commons/widgets/custom_shapes/container/circular_container.dart';
import '../../../../commons/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BCurvedEdgeWidget(
            child: Container(
              color: BColors.primary,
              padding: const EdgeInsets.all(0),
              child: const SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                      top: -150,
                      right: -250,
                      child: BCirularContainer(),
                    ),
                    Positioned(
                      top: 100,
                      right: -300,
                      child: BCirularContainer(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
