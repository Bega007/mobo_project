import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../components/my_circular_icon.dart';
import '../../components/my_rounded_container.dart';
import '../../components/my_rounded_image.dart';
import '../../providers.dart';
import '../../utils/constants/my_colors.dart';
import '../../utils/constants/my_shadow_style.dart';
import '../../utils/constants/my_sizes.dart';
import '../../utils/helpers/my_helper_functions.dart';
import '../my_product_detail_screen.dart';
import 'my_product_title_text.dart';

final getProductsProvider = FutureProvider((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getProducts();
});

class MyProductCardVertical extends ConsumerWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = MyHelperFunctions.isDarkMode(context);
    final products = ref.watch(getProductsProvider);

    return products.when(
      data: (data) => Column(
        children: List.generate(
          1,
          (index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push<Widget>(
                MaterialPageRoute(
                  builder: (context) => MyProductDetailScreen(),
                ),
              );
            },
            child: Container(
              width: 210,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                boxShadow: [MyShadowStyle.verticalProductShadow],
                borderRadius: BorderRadius.circular(MySizes.productImageRadius),
                color: dark ? MyColors.darkerGrey : MyColors.white,
              ),
              child: Column(
                children: [
                  //Thumbnail, whishlist Button
                  MyRoundedContainer(
                    height: 130,
                    width: 180,
                    padding: const EdgeInsets.all(MySizes.sm),
                    backgroundColor: dark ? MyColors.dark : MyColors.light,
                    child: Stack(
                      children: [
                        //Thumbnail Image
                        Center(
                          child: MyRoundedImage(
                            imageUrl: data[index].image ?? '',
                            applyImageRadius: true,
                            isNetworkImage: true,
                          ),
                        ),
                        // Favorite Icon Button
                        const Positioned(
                          top: 0,
                          right: 0,
                          child: MyCircularIcon(
                            icon: Iconsax.heart5,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems / 2),
                  // Details
                  Padding(
                    padding: const EdgeInsets.only(left: MySizes.sm),
                    child: Column(
                      children: [
                        MyProductTitleText(
                          title: data[index].title ?? '',
                          smallSize: true,
                        ),
                        const SizedBox(height: MySizes.spaceBtwItems),
                        Row(
                          children: [
                            // Price
                            Text(
                              '${data[index].price} TMT',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      error: (error, stackTress) {
        log(error.toString());
        log(stackTress.toString());
        return Text(error.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
