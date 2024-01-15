import 'package:flutter/material.dart';

import '../components/my_appbar.dart';
import '../components/my_bottom_checkout.dart';
import '../components/my_coupon_code.dart';
import '../components/my_pieces_button.dart';
import '../components/my_rounded_image.dart';
import '../components/my_section_heading.dart';
import '../components/my_similiar_products.dart';
import '../utils/constants/my_colors.dart';
import '../utils/constants/my_image_string.dart';
import '../utils/constants/my_sizes.dart';
import '../utils/helpers/my_helper_functions.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Shopping Bag'),
      ),
      bottomNavigationBar: const MyBottomCheckOut(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    Row(
                      children: [
                        // Image
                        MyRoundedImage(
                          imageUrl: MyImages.chairdesign1,
                          width: 80,
                          height: 80,
                          padding: const EdgeInsets.all(MySizes.sm),
                          backgroundColor: MyHelperFunctions.isDarkMode(context)
                              ? MyColors.darkerGrey
                              : MyColors.light,
                        ),

                        const SizedBox(width: MySizes.spaceBtwItems),

                        //Title
                        const Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Designed chair'),
                              SizedBox(height: MySizes.spaceBtwItems),
                              MyPiecesButton(),
                            ],
                          ),
                        ),
                        //price
                        const MySectionHeading(
                          title: r'$250',
                          showActionButton: false,
                          textColor: MyColors.warning,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwItems),
              MyCouponCode(dark: dark),
              const SizedBox(height: MySizes.spaceBtwItems),
              const MySectionHeading(
                title: 'Similar products',
                showActionButton: false,
              ),
              const MySimilarProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
