import 'package:flutter/material.dart';
import 'package:mobo_project/utils/constants/my_image_string.dart';
import 'package:mobo_project/widgets/my_vertical_image_text.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyVerticalImageText(
                image: MyImages.chair,
                title: 'Chair',
                onTap: () {},
              ),
            );
          }),
    );
  }
}
