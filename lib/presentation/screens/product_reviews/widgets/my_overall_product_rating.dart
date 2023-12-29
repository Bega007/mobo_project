import 'package:flutter/material.dart';
import 'package:mobo_project/presentation/screens/product_reviews/widgets/my_rating_progress_indicator.dart';

class MyOverallProductRating extends StatelessWidget {
  const MyOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              MyRatingProgressIndicator(text: '5', value: 1.0),
              MyRatingProgressIndicator(text: '4', value: 1.0),
              MyRatingProgressIndicator(text: '3', value: 1.0),
              MyRatingProgressIndicator(text: '2', value: 1.0),
              MyRatingProgressIndicator(text: '1', value: 1.0),
            ],
          ),
        ),
      ],
    );
  }
}