import 'package:flutter/material.dart';

import '../utils/constants/my_enums.dart';
import '../utils/constants/my_image_string.dart';
import '../utils/constants/my_sizes.dart';
import 'my_circular_image.dart';
import 'my_market_title_icon.dart';
import 'my_rounded_container.dart';

class MyMarketCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;

  const MyMarketCard({super.key, required this.showBorder, this.onTap});

  @override
  Widget build(BuildContext context) {
    //final isDark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: MyRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(MySizes.sm),
        child: Row(
          children: [
            //Icon
            const Flexible(
              child: MyCircularImage(
                image: MyImages.ikea,
                backgroundColor: Colors.transparent,
              ),
            ),

            const SizedBox(width: MySizes.spaceBtwItems / 2),

            // Texts
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyMarketTitleWithVerifyIcon(
                  title: 'Ikea',
                  marketTextSize: TextSizes.large,
                ),
                Text(
                  '25 products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
