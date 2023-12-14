import 'package:flutter/material.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/widgets/my_appbar.dart';
import 'package:mobo_project/widgets/my_market_card.dart';
import 'package:mobo_project/widgets/my_sortable_products.dart';

class MyMarketProducts extends StatelessWidget {
  const MyMarketProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Ikea'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //Market Detail
              MyMarketCard(showBorder: true),
              SizedBox(
                height: MySizes.spaceBtwSections,
              ),

              MySortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
