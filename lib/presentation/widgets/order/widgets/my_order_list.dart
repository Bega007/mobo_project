import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/constants/my_colors.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/presentation/widgets/my_rounded_container.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';

class MyOrderListItems extends StatelessWidget {
  const MyOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(
        height: MySizes.spaceBtwItems,
      ),
      itemBuilder: (context, index) => MyRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(MySizes.md),
        backgroundColor: dark ? MyColors.dark : MyColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // 1 Icon
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: MySizes.spaceBtwItems / 2,
                ),

                // 2 Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: MyColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                // 3-Icon
                IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Iconsax.arrow_right_34, size: MySizes.iconSm),
                ),
              ],
            ),

            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),

            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: MySizes.spaceBtwItems / 2,
                      ),

                      // 2 Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text(
                              '#256f2',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // 1 Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: MySizes.spaceBtwItems / 2,
                      ),

                      // 2 Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text(
                              '07 Sep 2025',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
