import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobo_project/common/styles/my_spacing_styles.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/utils/texts/my_texts.dart';

class MySuccesScreen extends StatelessWidget {
  final String animation, title, subtitle;
  final VoidCallback? onPressed;
  const MySuccesScreen(
      {super.key,
      required this.animation,
      required this.title,
      required this.subtitle,
      this.onPressed});

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

              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),

              // Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),

              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),

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
}
