import 'package:flutter/material.dart';
import 'package:mobo_project/core/utils/constants/my_sizes.dart';
import 'package:mobo_project/features/presentation/widgets/my_form_divider.dart';
import 'package:mobo_project/features/presentation/screens/login/widgets/my_login_form.dart';
import 'package:mobo_project/features/presentation/screens/login/widgets/my_login_header.dart';
import 'package:mobo_project/features/presentation/widgets/my_social_buttons.dart';
import 'package:mobo_project/core/utils/styles/my_spacing_styles.dart';
import 'package:mobo_project/core/utils/texts/my_texts.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child:  Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children:  [
              // Logo ,Title & Sub-Title
             MyLoginHeader(),

              // Form
              MyLoginForm(),

              // Divider
              MyFormDivider(dividerText: MyTexts.orSignInWith),

             SizedBox(
                height: MySizes.spaceBtwItems,
              ),

              // Footer
              MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

