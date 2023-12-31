import 'package:flutter/material.dart';
import 'package:mobo_project/core/utils/constants/my_colors.dart';
import 'package:mobo_project/core/utils/constants/my_sizes.dart';
import 'package:mobo_project/features/presentation/widgets/my_bottom_add_to_bag.dart';
import 'package:mobo_project/features/presentation/widgets/my_pieces_button.dart';
import 'package:mobo_project/features/presentation/widgets/my_product_image.dart';
import 'package:mobo_project/features/presentation/widgets/my_ratings_and_avatar.dart';
import 'package:mobo_project/features/presentation/widgets/my_section_heading.dart';
import 'package:mobo_project/features/presentation/widgets/my_similiar_products.dart';
import 'package:mobo_project/features/presentation/widgets/my_tab_bar_view.dart';

// ignore: must_be_immutable
class MyProductDetailScreen extends StatelessWidget {
  MyProductDetailScreen({super.key});

  int gottenStars = 4;

  @override
  Widget build(BuildContext context) {
    //final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const MyBottomAddToBag(),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
             const MyProductImage(),
              

            Padding(
              padding: const EdgeInsets.only(
                  right: MySizes.defaultSpace,
                  left: MySizes.defaultSpace,
                  bottom: MySizes.defaultSpace),
              child: Column(
                children: [
                  // Product Name
                  const MySectionHeading(
                    title: 'Designed Chair',
                    showActionButton: false,
                    textColor: MyColors.textSecondary,
                  ),

                  // Price
                  const MySectionHeading(
                    title: '\$250',
                    showActionButton: false,
                    textColor: MyColors.warning,
                  ),
                  // Pieces Button
                  const MyPiecesButton(),

                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  //Rating and circle avatar
                  MyRatingsAndAvatar(gottenStars: gottenStars),

                  const SizedBox(
                    height: 12,
                  ),

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
