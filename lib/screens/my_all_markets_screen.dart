import 'package:flutter/material.dart';

import '../components/my_appbar.dart';
import '../components/my_grid_view.dart';
import '../components/my_market_card.dart';
import '../components/my_market_products.dart';
import '../utils/constants/my_sizes.dart';

class MyAllMarketsScreen extends StatelessWidget {
  const MyAllMarketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: false,
        title: Text('Markets'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              //const MySectionHeading( title: 'Markets',showActionButton: false,),

              const SizedBox(height: MySizes.spaceBtwItems),

              //Brands Markets
              MyGridView(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => MyMarketCard(
                  showBorder: true,
                  onTap: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyMarketProducts(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
