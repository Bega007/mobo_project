import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/product_cards/my_product_card_vertical.dart';
import '../utils/constants/my_sizes.dart';
import 'my_grid_view.dart';

class MySortableProducts extends StatelessWidget {
  const MySortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // DropDown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity',
          ]
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList(),
        ),

        const SizedBox(height: MySizes.spaceBtwSections),

        // Products
        MyGridView(
          itemCount: 8,
          itemBuilder: (context, index) => const MyProductCardVertical(),
        ),
      ],
    );
  }
}
