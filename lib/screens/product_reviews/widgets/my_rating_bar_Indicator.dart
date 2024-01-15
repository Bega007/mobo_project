// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/my_colors.dart';

class MyRatingBarIndicator extends StatelessWidget {
  final double rating;

  const MyRatingBarIndicator({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: MyColors.grey,
      itemBuilder: (context, index) => const Icon(
        Iconsax.star1,
        color: MyColors.primary,
      ),
    );
  }
}
