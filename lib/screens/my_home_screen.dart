import 'package:flutter/material.dart';
import '../components/my_grid_view.dart';
import '../components/my_home_categories.dart';
import '../components/my_large_text.dart';
import '../components/my_prmo_slider.dart';
import '../components/my_rounded_image.dart';
import '../components/my_search_bar.dart';
import '../components/my_section_heading.dart';
import '../utils/constants/my_image_string.dart';
import '../utils/constants/my_sizes.dart';
import 'product_cards/my_product_card_vertical.dart';
import 'product_cards/my_product_title_text.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner
            const MyLargeTextIcon(
              text: 'Explore What \nYour Home Needs',
            ),

            const SizedBox(height: MySizes.spaceBtwSections),

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
              padding: EdgeInsets.all(8),
              child: MyPromoSlider(
                banners: [
                  MyImages.banner1,
                  MyImages.banner2,
                ],
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
              itemBuilder: (context, index) => const MyProductCardVertical(),
            ),
            // Image ads
            const Padding(
              padding: EdgeInsets.all(8),
              child: MyRoundedImage(imageUrl: MyImages.sale1),
            ),

            // Rooms section
            SizedBox(
              height: 310,
              child: Column(
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
                      itemBuilder: (context, index) {
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
                      },
                    ),
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
