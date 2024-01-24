import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../utils/constants/my_colors.dart';
import '../utils/helpers/my_helper_functions.dart';
import 'my_appbar.dart';
import 'my_curved_edges_widget.dart';

class MyProductImage extends StatelessWidget {
  final String image;
  const MyProductImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyCurvedEdgesWidget(
      child: Container(
        color: dark ? MyColors.darkGrey : MyColors.light,
        child: Stack(
          children: [
            Container(
              height: 260,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            MyAppBar(
              showBackArrow: true,
              actions: [
                IconButton(
                  icon: const Icon(Iconsax.share),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
