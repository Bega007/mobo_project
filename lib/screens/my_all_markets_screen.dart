import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/my_appbar.dart';
import '../components/my_grid_view.dart';
import '../components/my_market_card.dart';
import '../components/my_market_products.dart';
import '../my_providers.dart';
import '../utils/constants/my_sizes.dart';

final getCompanyProvider = FutureProvider((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getCompany();
});

class MyAllMarketsScreen extends ConsumerWidget {
  const MyAllMarketsScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companyDetail = ref.watch(getCompanyProvider);
    final index = 0;

    return companyDetail.when(
      data: (data) {
        log(data[index].image.toString());
        return Scaffold(
          appBar: const MyAppBar(
            showBackArrow: false,
            title: Text('Markets'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // Heading
                  //const MySectionHeading( title: 'Markets',showActionButton: false,),

                  const SizedBox(height: MySizes.spaceBtwItems),

                  //Brands Markets
                  MyGridView(
                    itemCount: data.length,
                    mainAxisExtent: 80,
                    itemBuilder: (context, index) {
                      return MyMarketCard(
                        title: data[index].title ?? '',
                        image: data[index].image ?? '',
                        showBorder: true,
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyMarketProducts(
                                companyDetail: data[index],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (error, stackTress) {
        return Text(error.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
