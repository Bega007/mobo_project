import 'package:flutter/material.dart';

import '../../../utils/constants/my_colors.dart';
import '../../../utils/device/my_device_utility.dart';

class MyRatingProgressIndicator extends StatelessWidget {
  final String text;
  final double value;

  const MyRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MyDeviceUtility.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: MyColors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(MyColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
