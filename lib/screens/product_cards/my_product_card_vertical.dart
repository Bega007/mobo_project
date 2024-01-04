import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../components/my_circular_icon.dart';
import '../../components/my_rounded_container.dart';
import '../../components/my_rounded_image.dart';
import '../../utils/constants/my_colors.dart';
import '../../utils/constants/my_image_string.dart';
import '../../utils/constants/my_shadow_style.dart';
import '../../utils/constants/my_sizes.dart';
import '../../utils/helpers/my_helper_functions.dart';
import '../my_product_detail_screen.dart';
import 'my_product_title_text.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push<Widget>(
          MaterialPageRoute(
            builder: (context) => MyProductDetailScreen(),
          ),
        );
      },
      child: Container(
        width: 210,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, whishlist Button
            MyRoundedContainer(
              height: 210,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColor: dark ? MyColors.dark : MyColors.light,
              child: const Stack(
                children: [
                  //Thumbnail Image
                  MyRoundedImage(
                    imageUrl: MyImages.chairdesign1,
                    applyImageRadius: true,
                  ),
                  // Favorite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: MyCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems / 2),
            // Details
            Padding(
              padding: const EdgeInsets.only(left: MySizes.sm),
              child: Column(
                children: [
                  const MyProductTitleText(
                    title: 'Designed Chair',
                    smallSize: true,
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  Row(
                    children: [
                      // Price
                      Text(
                        r'$35.5',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
