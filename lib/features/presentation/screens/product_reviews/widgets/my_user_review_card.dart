import 'package:flutter/material.dart';
import 'package:mobo_project/core/utils/constants/my_colors.dart';
import 'package:mobo_project/core/utils/constants/my_image_string.dart';
import 'package:mobo_project/core/utils/constants/my_sizes.dart';
import 'package:mobo_project/core/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/features/presentation/screens/product_reviews/widgets/my_rating_bar_Indicator.dart';
import 'package:mobo_project/features/presentation/widgets/my_rounded_container.dart';
import 'package:readmore/readmore.dart';

class MyUserReviewCard extends StatelessWidget {
  const MyUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(MyImages.avatar),
                ),
                const SizedBox(
                  width: MySizes.spaceBtwItems,
                ),
                Text(
                  'Plany Planyyev',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const SizedBox(
          height: MySizes.spaceBtwItems,
        ),

        //Review
        Row(
          children: [
            const MyRatingBarIndicator(
              rating: 4,
            ),
            const SizedBox(
              width: MySizes.spaceBtwItems,
            ),
            Text(
              '01 Nov 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),

        const SizedBox(
          height: MySizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'The user interface of the app is quite intutive.I was able to navigate and make purchase seamlessly.Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColors.primary),
        ),
        const SizedBox(
          height: MySizes.spaceBtwItems,
        ),

        // Company Review
        MyRoundedContainer(
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('MoBo Store',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text(
                      '02 Nov 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'The user interface of the app is quite intutive.I was able to navigate and make purchase seamlessly.Great job!',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: MySizes.spaceBtwSections,
        ),
      ],
    );
  }
}
