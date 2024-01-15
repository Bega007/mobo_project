import 'package:flutter/material.dart';

import '../utils/constants/my_colors.dart';
import '../utils/constants/my_image_string.dart';
import '../utils/constants/my_sizes.dart';

class MySocialButtons extends StatelessWidget {
  const MySocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MySizes.iconMd,
              height: MySizes.iconMd,
              image: AssetImage(MyImages.google),
            ),
          ),
        ),
        const SizedBox(width: MySizes.spaceBtwItems),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MySizes.iconMd,
              height: MySizes.iconMd,
              image: AssetImage(MyImages.facebook),
            ),
          ),
        ),
        const SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: MySizes.iconMd,
              height: MySizes.iconMd,
              image: AssetImage(MyImages.gozle),
            ),
          ),
        ),
      ],
    );
  }
}
