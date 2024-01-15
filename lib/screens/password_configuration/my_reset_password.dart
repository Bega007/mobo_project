import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../components/my_appbar.dart';
import '../../utils/constants/my_image_string.dart';
import '../../utils/constants/my_sizes.dart';
import '../../utils/helpers/my_helper_functions.dart';
import '../../utils/texts/my_texts.dart';

class MyResetPassword extends StatelessWidget {
  const MyResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Animation or Image with 60% of screen width
              Lottie.asset(
                MyImages.emailSent,
                width: MyHelperFunctions.screenWidth(context) * 0.8,
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              // Title & Subtitle
              Text(
                MyTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              Text(
                MyTexts.changeYourPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(MyTexts.done),
                ),
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: const Text(MyTexts.resendEmail),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
