import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/constants/my_sizes.dart';
import '../../utils/helpers/my_helper_functions.dart';
import '../../utils/styles/my_spacing_styles.dart';
import '../../utils/texts/my_texts.dart';

class MySuccessScreen extends StatelessWidget {
  final String animation;
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;

  const MySuccessScreen({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Animation
              Lottie.asset(
                animation,
                width: MyHelperFunctions.screenWidth(context) * 0.8,
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              // Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(MyTexts.textContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
  }
}
