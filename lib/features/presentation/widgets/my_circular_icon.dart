import 'package:flutter/material.dart';
import 'package:mobo_project/core/utils/constants/my_colors.dart';
import 'package:mobo_project/core/utils/constants/my_sizes.dart';
import 'package:mobo_project/core/utils/helpers/my_helper_functions.dart';

class MyCircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  const MyCircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size = MySizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed});

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
        borderRadius: BorderRadius.circular(100),
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
