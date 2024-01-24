import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/company_detail.dart';
import '../my_providers.dart';
import '../utils/constants/my_colors.dart';
import '../utils/helpers/my_helper_functions.dart';
import 'my_market_products.dart';
import 'my_vertical_image_text.dart';

final getCategoryProvider = FutureProvider((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getCategory();
});

class MyHomeCategories extends ConsumerWidget {
  const MyHomeCategories({
    //required this.companyDetail, 
    super.key,
  });
  //final CompanyDetail companyDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = MyHelperFunctions.isDarkMode(context);
    final category = ref.watch(getCategoryProvider);
    

    return category.when(
      data: (data) => SizedBox(
        height: 100,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: MyVerticalImageText(
                title: data[index].name ?? '',
                // image:
                // data[index].image ?? '',
                //'${data[index].image}',
                //isNetworkImage: true,
                textColor: dark ? MyColors.white : MyColors.black,
                onTap: () {
                  /*Navigator.of(context).push<Widget>(
                    MaterialPageRoute(
                      builder: (context) => MyMarketProducts(
                        companyDetail: companyDetail,
                      ),
                    ),
                  );*/
                },
              ),
            );
          },
        ),
      ),
      error: (error, stackTress) {
        return Text(error.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
