import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../my_providers.dart';
import '../utils/constants/my_colors.dart';
import '../utils/constants/my_image_string.dart';
import '../utils/helpers/my_helper_functions.dart';
import 'my_market_products.dart';
import 'my_vertical_image_text.dart';

final getCompanyProvider = FutureProvider((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getCompany();
});

class MyHomeCategories extends ConsumerWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = MyHelperFunctions.isDarkMode(context);
    final company = ref.watch(getCompanyProvider);

    return company.when(
      data: (data) => 
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: MyVerticalImageText(
                    image: 
                    data[index].image ?? '',
                    //'${data[index].image}',
                    //isNetworkImage: true,
                    title: data[index].title ?? '',
                    textColor: dark ? MyColors.white : MyColors.black,
                    onTap: () {
                      Navigator.of(context).push<Widget>(
                        MaterialPageRoute(
                          builder: (context) => const MyMarketProducts(),
                        ),
                      );
                    },
                  ),
                );
              },
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
