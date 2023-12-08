import 'package:flutter/material.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';
import 'package:mobo_project/utils/constants/my_image_string.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/widgets/my_appbar.dart';
import 'package:mobo_project/widgets/my_bottom_checkout.dart';
import 'package:mobo_project/widgets/my_coupon_code.dart';
import 'package:mobo_project/widgets/my_pieces_button.dart';
import 'package:mobo_project/widgets/my_rounded_image.dart';
import 'package:mobo_project/widgets/my_section_heading.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
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
                separatorBuilder: (_, __) => const SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
                itemBuilder: (_, index) => Column(
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

                        const SizedBox(
                          width: MySizes.spaceBtwItems,
                        ),

                        //Title,Price, etc
                        const Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Designed chair'),
                              SizedBox(
                                height: MySizes.spaceBtwItems,
                              ),
                              MyPiecesButton(),
                            ],
                          ),
                        ),
                        const MySectionHeading(
                          title: '\$250',
                          showActionButton: false,
                          textColor: MyColors.warning,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: MySizes.spaceBtwItems,
                    ),
                  ],
                ),
              ),
              MyCouponCode(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}


