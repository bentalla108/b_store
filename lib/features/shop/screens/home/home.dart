import 'package:b_store/commons/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:flutter/material.dart';

import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          BPrimaryHeaderContainer(
            child: Column(
              children: [
                BHomeAppbar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
