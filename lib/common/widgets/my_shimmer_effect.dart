import 'package:flutter/material.dart';
import 'package:mobo_project/constants/my_colors.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmerEfect extends StatelessWidget {
  final double width, height, radius;
  final Color? color;
  
  
  const MyShimmerEfect({
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
