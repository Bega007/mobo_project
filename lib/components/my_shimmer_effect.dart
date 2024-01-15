import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/constants/my_colors.dart';
import '../utils/helpers/my_helper_functions.dart';

class MyShimmerEffect extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color? color;

  const MyShimmerEffect({
    super.key,
    required this.width,
    required this.height,
    this.radius = 15,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? MyColors.darkerGrey : MyColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
