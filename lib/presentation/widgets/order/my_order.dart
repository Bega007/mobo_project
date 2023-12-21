import 'package:flutter/material.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/presentation/widgets/my_appbar.dart';
import 'package:mobo_project/presentation/widgets/order/widgets/my_order_list.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: MyAppBar(
        title: Text(
          'My Orders',
           style: Theme.of(context).textTheme.headlineSmall,),
           showBackArrow: true,
           ),
      body: const Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
      
      // Orders
      child: MyOrderListItems(),
      ),
    );
  }
}