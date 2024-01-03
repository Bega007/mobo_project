import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/constants/my_colors.dart';
import '../utils/constants/my_enums.dart';
import '../utils/constants/my_sizes.dart';

class MyMarketTitleWithVerifyIcon extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? textColor;
  final Color? iconColor;
  final TextAlign? textAlign;
  final TextSizes marketTextSize;

  const MyMarketTitleWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = MyColors.primary,
    this.textAlign = TextAlign.center,
    this.marketTextSize = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines,
          style: marketTextSize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
              : marketTextSize == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
                  : marketTextSize == TextSizes.large
                      ? Theme.of(context).textTheme.titleLarge!.apply(color: textColor)
                      : Theme.of(context).textTheme.bodyMedium!.apply(color: textColor),
        ),
        const SizedBox(width: MySizes.xs),
        const Icon(
          Iconsax.verify5,
          color: MyColors.primary,
          size: MySizes.iconXs,
        ),
      ],
    );
  }
}
