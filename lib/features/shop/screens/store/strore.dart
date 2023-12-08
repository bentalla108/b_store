import 'package:b_store/commons/widgets/appbar/appbart.dart';
import 'package:b_store/commons/widgets/products/custom_cart/custom_cart_button.dart';
import 'package:flutter/material.dart';

import '../../../../commons/widgets/container/primary_header_container.dart';
import '../../../../commons/widgets/container/search_container.dart';
import '../../../../utils/constants/sizes.dart';
import '../home/widgets/home_appbar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      BAppbar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          BCartIconButton(cartPressed: () {}, cartCounter: '3'),
        ],
      ),
    ]));
  }
}
