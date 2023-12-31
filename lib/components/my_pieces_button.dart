import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/constants/my_colors.dart';
import '../utils/constants/my_sizes.dart';
import 'my_rounded_icon.dart';

class MyPiecesButton extends StatelessWidget {
  const MyPiecesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MyRoundedIcon(
          borderColor: MyColors.warning,
          icon: Iconsax.minus,
          color: MyColors.warning,
          width: 40,
          height: 40,
        ),
        SizedBox(width: MySizes.spaceBtwItems),
        Text(
          '1',
          style: TextStyle(color: MyColors.warning),
        ),
        SizedBox(width: MySizes.spaceBtwItems),
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
