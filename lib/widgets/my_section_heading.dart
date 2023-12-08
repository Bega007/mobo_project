import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';

class MySectionHeading extends StatelessWidget {
  final Color? textColor;
  final Color titleColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  const MySectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'See all',
    this.onPressed,
    this.titleColor = const Color(
      0xFFFF6D00,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              child: Row(
                children: [
                  Text(
                    buttonTitle,
                    style: TextStyle(color: titleColor),
                  ), 
                  const Icon(
                      Iconsax.arrow_right_14,color: MyColors.warning,),
                      //style: ButtonStyle(iconColor: titleColor),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
