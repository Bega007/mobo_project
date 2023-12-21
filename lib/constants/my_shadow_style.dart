import 'package:flutter/material.dart';
import 'package:mobo_project/constants/my_colors.dart';

class MyShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: MyColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

   static final horizontalProductShadow = BoxShadow(
    color: MyColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}
