import 'package:flutter/material.dart';

import '../../components/my_form_divider.dart';
import '../../components/my_social_buttons.dart';
import '../../utils/constants/my_sizes.dart';
import '../../utils/styles/my_spacing_styles.dart';
import '../../utils/texts/my_texts.dart';
import 'widgets/my_login_form.dart';
import 'widgets/my_login_header.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo ,Title & Sub-Title
              MyLoginHeader(),

              // Form
              MyLoginForm(),

              // Divider
              MyFormDivider(dividerText: MyTexts.orSignInWith),

              SizedBox(height: MySizes.spaceBtwItems),

              // Footer
              MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
