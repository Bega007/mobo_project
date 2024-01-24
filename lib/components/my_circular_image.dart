import 'package:flutter/material.dart';

import '../utils/constants/my_colors.dart';
import '../utils/constants/my_sizes.dart';
import '../utils/helpers/my_helper_functions.dart';

class MyCircularImage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  //final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width;
  final double height;
  final double padding;

  const MyCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    //this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 60,
    this.height = 60,
    this.padding = MySizes.xs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (MyHelperFunctions.isDarkMode(context)
                ? MyColors.black
                : MyColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image.network(image, fit: fit,),
          //fit: fit,
          /*image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,*/
          //color: overlayColor,
        ),
    );
  }
}
