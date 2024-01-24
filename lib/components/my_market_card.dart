import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/company_detail.dart';
import '../my_providers.dart';
import '../utils/constants/my_enums.dart';
import '../utils/constants/my_sizes.dart';
import 'my_circular_image.dart';
import 'my_market_title_icon.dart';
import 'my_rounded_container.dart';

final getCompanyProvider = FutureProvider((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getCompany();
});

class MyMarketCard extends ConsumerWidget {
  final bool showBorder;
  final void Function()? onTap;
  final String? title;
  final String? image;
  //final CompanyDetail companyDetail;

  const MyMarketCard({
    /*required*/ this.image,
    required this.title,
    super.key,
    required this.showBorder,
    this.onTap,
    //required this.companyDetail
  });
  
  


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final isDark = MyHelperFunctions.isDarkMode(context);
    final index = 0;
    final companyDetail = ref.watch(getCompanyProvider);
    return companyDetail.when(
      data: (data) => GestureDetector(
        onTap: onTap,
        child: MyRoundedContainer(
          showBorder: showBorder,
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(MySizes.sm),
          child: Row(
            children: [
              //Icon
              if (image != null)
              Flexible(
                child: MyCircularImage(
                  image: 
                  //image!,
                  data[index].image ?? '',
                  //'',
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(width: MySizes.spaceBtwItems / 2),

              // Texts
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyMarketTitleWithVerifyIcon(
                    title: title!,
                    //'',,
                    marketTextSize: TextSizes.large,
                  ),
                  Text(
                    data[index].description ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      error: (error, stackTress) {
        return Text(error.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
