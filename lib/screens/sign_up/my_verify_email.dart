import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../components/my_appbar.dart';
import '../../utils/constants/my_image_string.dart';
import '../../utils/constants/my_sizes.dart';
import '../../utils/helpers/my_helper_functions.dart';
import '../../utils/texts/my_texts.dart';
import '../login/my_login_screen.dart';
import 'my_success_screen.dart';

class MyVerifyEmailScreen extends StatelessWidget {
  const MyVerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<Widget>(
                  builder: (context) => const MyLoginScreen(),
                ),
              );
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //Padding to Give Default Equal Space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Animation
              Lottie.asset(
                MyImages.verifyEmail,
                width: MyHelperFunctions.screenWidth(context) * 0.8,
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              //Title & SubTitle
              Text(
                MyTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              Text(
                'support@mobo.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              Text(
                MyTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: MySizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(MyTexts.textContinue),
                  onPressed: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MySuccessScreen(
                          animation: MyImages.success,
                          title: MyTexts.yourAccountCreateTitle,
                          subtitle: MyTexts.yourAccountCreatedSubtitle,
                          onPressed: () {
                            Navigator.push<Widget>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLoginScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
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
