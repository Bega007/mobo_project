import 'package:flutter/material.dart';
import 'package:mobo_project/core/utils/constants/my_colors.dart';
import 'package:mobo_project/core/utils/constants/my_sizes.dart';
import 'package:mobo_project/features/presentation/widgets/my_rounded_container.dart';

class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? MyColors.dark : MyColors.white,
      padding: const EdgeInsets.only(
          top: MySizes.sm,
          bottom: MySizes.sm,
          right: MySizes.sm,
          left: MySizes.md),
      child: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          // Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? MyColors.white.withOpacity(0.5)
                    : MyColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.3),
                side: BorderSide(color: Colors.grey.withOpacity(0.4)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}