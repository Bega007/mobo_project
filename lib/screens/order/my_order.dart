import 'package:flutter/material.dart';
import 'package:mobo_project/screens/order/widgets/my_order_list.dart';

import '../../components/my_appbar.dart';
import '../../utils/constants/my_sizes.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: MyAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),

        // Orders
        child: MyOrderListItems(),
      ),
    );
  }
}
