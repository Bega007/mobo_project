import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/data/utils/constants/my_colors.dart';
import 'package:mobo_project/data/utils/constants/my_sizes.dart';
import 'package:mobo_project/data/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/presentation/widgets/my_rounded_container.dart';

class MySingleAddress extends StatelessWidget {
  final bool selectedAddres;
  const MySingleAddress({super.key, required this.selectedAddres});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      padding: const EdgeInsets.all(MySizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddres
          ? MyColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddres
          ? Colors.transparent
          : dark
              ? MyColors.darkerGrey
              : MyColors.grey,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddres ? Iconsax.tick_circle5 : null,
              color: selectedAddres
                  ? dark
                      ? MyColors.light
                      : MyColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Plany Planyyev',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: MySizes.sm / 2,
              ),
              const Text(
                '(+993) 63 462299',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: MySizes.sm / 2,
              ),
              const Text(
                '745400 Plany Planyyev, Mary, Mary, Turkmenistan',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
