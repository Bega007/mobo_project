import 'package:flutter/material.dart';

import '../components/my_bottom_add_to_bag.dart';
import '../components/my_pieces_button.dart';
import '../components/my_product_image.dart';
import '../components/my_ratings_and_avatar.dart';
import '../components/my_section_heading.dart';
import '../components/my_similiar_products.dart';
import '../components/my_tab_bar_view.dart';
import '../data/models/products.dart';
import '../utils/constants/my_colors.dart';
import '../utils/constants/my_sizes.dart';

// ignore: must_be_immutable
class MyProductDetailScreen extends StatelessWidget {
  final Products products;
  MyProductDetailScreen({super.key, required this.products});

  int gottenStars = 4;

  @override
  Widget build(BuildContext context) {
    //final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const MyBottomAddToBag(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyProductImage(image: products.images.toString(),),
            Padding(
              padding: const EdgeInsets.only(
                right: MySizes.defaultSpace,
                left: MySizes.defaultSpace,
                bottom: MySizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Product Name
                   MySectionHeading(
                    title: products.title ?? '',
                    showActionButton: false,
                    textColor: MyColors.textSecondary,
                  ),

                  // Price
                   MySectionHeading(
                    title: '${products.price} TMT',
                    showActionButton: false,
                    textColor: MyColors.warning,
                  ),
                  // Pieces Button
                  const MyPiecesButton(),

                  const SizedBox(height: MySizes.spaceBtwItems),

                  //Rating and circle avatar
                  MyRatingsAndAvatar(gottenStars: gottenStars),

                  const SizedBox(height: 12),

                  // Description review etc
                  const MyTabBarView(),

                  const Divider(),

                  const MySectionHeading(
                    title: 'Similar products',
                    showActionButton: false,
                  ),

                  const MySimilarProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
