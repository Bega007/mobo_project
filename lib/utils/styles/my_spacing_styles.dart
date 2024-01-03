import 'package:flutter/material.dart';

import '../constants/my_sizes.dart';

class MySpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
    bottom: MySizes.defaultSpace, 
  );
}
