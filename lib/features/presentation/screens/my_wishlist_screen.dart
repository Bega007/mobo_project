import 'package:flutter/material.dart';
import 'package:mobo_project/core/utils/constants/my_sizes.dart';
import 'package:mobo_project/features/presentation/widgets/my_appbar.dart';
import 'package:mobo_project/features/presentation/widgets/my_grid_view.dart';
import 'package:mobo_project/features/presentation/screens/product_cards/my_product_card_vertical.dart';

class MyWishlistScreen extends StatelessWidget {
  const MyWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: false,
        title: Text('Whishlist'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              MyGridView(
                  itemCount: 6,
                  itemBuilder: (context, index) => const MyProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
