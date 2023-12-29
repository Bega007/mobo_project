import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/constants/my_colors.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/common/widgets/my_rounded_icon.dart';

class MyBottomAddToBag extends StatelessWidget {
  const MyBottomAddToBag({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MySizes.defaultSpace, vertical: MySizes.defaultSpace ),
      decoration: BoxDecoration(
          color: dark ? MyColors.darkGrey : MyColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(MySizes.cardRadiusLg),
            topRight: Radius.circular(MySizes.borderRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const MyRoundedIcon(
            icon: Iconsax.heart4,
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 280,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: MyColors.black,
                side: const BorderSide(color: MyColors.black),
              ),
              child: const Text('Add to bag'),
            ),
          ),
        ],
      ),
    );
  }
}
