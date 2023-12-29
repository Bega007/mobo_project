import 'package:flutter/material.dart';
import 'package:mobo_project/constants/my_colors.dart';
import 'package:mobo_project/presentation/screens/product_reviews/my_product_reviews.dart';
import 'package:readmore/readmore.dart';

class MyTabBarView extends StatefulWidget {
  const MyTabBarView({
    super.key,
  });

  @override
  State<MyTabBarView> createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        TabBar(
            labelPadding: const EdgeInsets.only(left: 10, right: 10),
            controller: tabController,
            labelColor: Colors.orange.shade900,
            unselectedLabelColor: Colors.grey,
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            tabs: const [
              Tab(
                text: 'Description',
              ),
              Tab(
                text: 'Materials',
              ),
              Tab(
                text: 'Reviews',
              )
            ]),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 70,
          width: double.maxFinite,
          child: TabBarView(
            controller: tabController,
            clipBehavior: Clip.antiAlias,
            children: const [
              ReadMoreText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc consectetur velit at massa vehicula, quis fringilla urna gravida.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Less',
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: MyColors.warning),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: MyColors.warning),
              ),
              ReadMoreText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc consectetur velit at massa vehicula, quis fringilla urna gravida.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Less',
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: MyColors.warning),
                lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: MyColors.warning,
                ),
              ),
              MyProductReviews(),
            ],
          ),
        ),
      ],
    );
  }
}
