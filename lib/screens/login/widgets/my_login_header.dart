import 'package:flutter/material.dart';

import '../../../utils/constants/my_image_string.dart';
import '../../../utils/constants/my_sizes.dart';
import '../../../utils/helpers/my_helper_functions.dart';
import '../../../utils/texts/my_texts.dart';

class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? MyImages.mobo : MyImages.mobo,
          ),
        ),
        Text(
          MyTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: MySizes.sm),
        Text(
          MyTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
