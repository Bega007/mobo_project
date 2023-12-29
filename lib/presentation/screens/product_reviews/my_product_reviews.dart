import 'package:flutter/material.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/presentation/screens/product_reviews/widgets/my_overall_product_rating.dart';
import 'package:mobo_project/presentation/screens/product_reviews/widgets/my_rating_bar_Indicator.dart';
import 'package:mobo_project/presentation/screens/product_reviews/widgets/my_user_review_card.dart';
import 'package:mobo_project/common/widgets/my_appbar.dart';

class MyProductReviews extends StatelessWidget {
  const MyProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: const MyAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use'),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),

            // Overall Product Ratings
            const MyOverallProductRating(),

            const MyRatingBarIndicator(
              rating: 3.5,
            ),
            Text(
              '12,611',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),

            // User Reviews List
            const MyUserReviewCard(),
            const MyUserReviewCard(),
            const MyUserReviewCard(),
            const MyUserReviewCard(),
          ]),
        ),
      ),
    );
  }
}
