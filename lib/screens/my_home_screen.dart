import 'package:flutter/material.dart';
import 'package:mobo_project/utils/constants/my_image_string.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/widgets/my_grid_view.dart';
import 'package:mobo_project/widgets/my_home_categories.dart';
import 'package:mobo_project/widgets/my_large_text.dart';
import 'package:mobo_project/widgets/my_prmo_slider.dart';
import 'package:mobo_project/widgets/my_rounded_image.dart';
import 'package:mobo_project/widgets/my_search_bar.dart';
import 'package:mobo_project/widgets/my_section_heading.dart';
import 'package:mobo_project/widgets/product_cards/my_product_card_vertical.dart';
import 'package:mobo_project/widgets/product_cards/my_product_title_text.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Banner
            const MyLargeTextIcon(
              text: 'Explore What                      Your Home Needs',
            ),

            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),

            // Search field
            const MySearchBar(),

            // Heading
            MySectionHeading(
              title: 'Categories',
              onPressed: () {},
            ),

            // categories
            const MyHomeCategories(),

            // Image Slider
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MyPromoSlider(
                banners: [MyImages.banner1, MyImages.banner2],
              ),
            ),

            // Popular text
            MySectionHeading(
              title: 'Popular',
              onPressed: () {},
            ),
            // Gridview
            MyGridView(
                itemCount: 4,
                itemBuilder: (_, index) => const MyProductCardVertical()),
            // Image ads
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MyRoundedImage(imageUrl: MyImages.sale1),
            ),

            // Rooms section
            SizedBox(
              height: 310,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MySectionHeading(
                    title: 'Rooms',
                    onPressed: () {},
                    showActionButton: false,
                  ),
                  const MyProductTitleText(
                    title: 'Furniture for every corners in your home',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(MySizes.sm),
                                  child: Image(
                                    image: AssetImage(MyImages.room1),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
