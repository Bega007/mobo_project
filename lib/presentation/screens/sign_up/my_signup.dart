import 'package:flutter/material.dart';
import 'package:mobo_project/common/widgets/my_appbar.dart';
import 'package:mobo_project/common/widgets/my_form_divider.dart';
import 'package:mobo_project/common/widgets/my_social_buttons.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/presentation/screens/sign_up/widgets/my_signup_form.dart';
import 'package:mobo_project/utils/texts/my_texts.dart';

class MySignupScreen extends StatelessWidget {
  const MySignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(MyTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),

            // Form
            const MySignupForm(),


            const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),


            // Divider
            const MyFormDivider(dividerText: MyTexts.orSignUpWith),


            const SizedBox(
                    height: MySizes.spaceBtwInputFields,
                  ),


            // Social Buttons
            const MySocialButtons(),
          ],
        ),
      )),
    );
  }
}

