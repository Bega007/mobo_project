import 'package:flutter/material.dart';

import '../utils/constants/my_colors.dart';
import '../utils/constants/my_image_string.dart';
import '../utils/helpers/my_helper_functions.dart';
import 'my_vertical_image_text.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: MyVerticalImageText(
              image: MyImages.chair,
              title: 'Chair',
              textColor: dark ? MyColors.white : MyColors.black,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
