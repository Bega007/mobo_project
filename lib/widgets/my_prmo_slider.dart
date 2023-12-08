import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';
import 'package:mobo_project/widgets/my_circular_container.dart';
import 'package:mobo_project/widgets/my_rounded_image.dart';

class MyPromoSlider extends StatefulWidget {
  final List<String> banners;

  const MyPromoSlider({
    super.key,
    required this.banners,
  });

  @override
  State<MyPromoSlider> createState() => _MyPromoSliderState();
}

class _MyPromoSliderState extends State<MyPromoSlider> {
  late final PageController controller;
  final carousalCurrentIndex = 0;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.initialPage),
          items: widget.banners
              .map((url) => MyRoundedImage(imageUrl: url))
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                for (int i = 0; i < widget.banners.length; i++)
                  const MyCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: MyColors.black,
                  ),
                const MyCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: MyColors.black,
                ),
                const MyCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: MyColors.black,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
