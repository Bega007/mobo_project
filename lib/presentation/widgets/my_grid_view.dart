import 'package:flutter/material.dart';
import 'package:mobo_project/data/utils/constants/my_sizes.dart';

class MyGridView extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  const MyGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
    });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MySizes.gridViewSpacing,
        crossAxisSpacing: MySizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
