import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/widgets/my_rounded_icon.dart';
import 'package:mobo_project/widgets/my_section_heading.dart';

class MyPriceAndPiecesButton extends StatelessWidget {
  const MyPriceAndPiecesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MySectionHeading(
          title: '\$250',
          showActionButton: false,
          textColor: MyColors.warning,
        ),
        SizedBox(width: 155),
        MyRoundedIcon(
          borderColor: MyColors.warning,
          icon: Iconsax.minus,
          color: MyColors.warning,
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        Text(
          '1',
          style: TextStyle(color: MyColors.warning),
        ),
        SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        MyRoundedIcon(
          borderColor: MyColors.warning,
          icon: Iconsax.add,
          color: MyColors.warning,
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}

