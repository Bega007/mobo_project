import 'package:flutter/material.dart';
import '../data/models/company_detail.dart';
import '../utils/constants/my_sizes.dart';
import 'my_appbar.dart';
import 'my_market_card.dart';
import 'my_sortable_products.dart';

class MyMarketProducts extends StatelessWidget {
  const MyMarketProducts({
    super.key,
    required this.companyDetail,
  });
  final CompanyDetail companyDetail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          companyDetail.title ?? '',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //Market Detail
              MyMarketCard(
                //data[index],
                title: companyDetail.title ?? '',
                //image: companyDetail.image ?? '',
                showBorder: true, 
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              const MySortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
