import 'package:flutter/material.dart';
import 'package:mobo_project/data/utils/constants/my_colors.dart';
import 'package:mobo_project/data/utils/constants/my_sizes.dart';
import 'package:mobo_project/data/utils/helpers/my_helper_functions.dart';

class MyRoundedIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final Color? borderColor;
  final VoidCallback? onPressed;
  const MyRoundedIcon(
      {super.key,
      this.width,
      this.height,
      this.size = MySizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : MyHelperFunctions.isDarkMode(context)
                ? MyColors.black.withOpacity(0.6)
                : MyColors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: borderColor!= null ? borderColor!
            : MyHelperFunctions.isDarkMode(context)
                ? MyColors.white
                : MyColors.darkGrey),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
