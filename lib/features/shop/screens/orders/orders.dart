import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../commons/widgets/appbar/appbar.dart';
import 'widgets/order_list_items.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppbar(
          title: Text(
            'My Orders',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(BSizes.defaultSpace),
        child: OrderListItemsView(),
      ),
    );
  }
}
