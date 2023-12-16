import 'package:flutter/material.dart';
import 'package:mobo_project/data/utils/constants/my_colors.dart';
import 'package:mobo_project/data/utils/constants/my_sizes.dart';
import 'package:mobo_project/data/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/presentation/widgets/my_circular_image.dart';
import 'package:mobo_project/presentation/widgets/my_rounded_container.dart';

class MyVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  const MyVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MyColors.black,
    this.backgroundColor = Colors.transparent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Column(children: [
        MyRoundedContainer(
          padding: const EdgeInsets.all(MySizes.sm),
          showBorder: true,
          backgroundColor:
              backgroundColor ?? (dark ? MyColors.black : MyColors.white),
          child: Row(
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: textColor),
              ),
              const SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              MyCircularImage(
                image: image,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark
                    ? MyColors.white
                    : MyColors.black,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
