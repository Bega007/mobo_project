import 'package:flutter/material.dart';
import 'package:mobo_project/constants/my_colors.dart';
import 'package:mobo_project/constants/my_sizes.dart';

class MyRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const MyRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = MySizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = MyColors.borderPrimary,
      this.backgroundColor = MyColors.white,
      this.padding,
      this.margin
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
