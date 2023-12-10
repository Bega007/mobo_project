import 'package:flutter/material.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/widgets/my_section_heading.dart';

class MyBottomCheckOut extends StatelessWidget {
  const MyBottomCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MySizes.defaultSpace, vertical: MySizes.defaultSpace),
      decoration: BoxDecoration(
          color: dark ? MyColors.darkGrey : MyColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(MySizes.cardRadiusLg),
            topRight: Radius.circular(MySizes.borderRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Stack(
            children: [
              MySectionHeading(
                          title: '\$250',
                          showActionButton: false,
                          textColor: MyColors.warning,
                        ),
            ],
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
              child: const Text('Proceed to checkout'),
            ),
          ),
        ],
      ),
    );
  }
}
