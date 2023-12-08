import 'package:flutter/material.dart';
import 'package:mobo_project/widgets/product_cards/my_product_card_vertical.dart';

class MySimilarProducts extends StatelessWidget {
  const MySimilarProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          itemCount: 4,
          //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return const MyProductCardVertical();
          }),
    );
  }
}

