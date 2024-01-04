import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../my_navigation_menu.dart';
import '../../../utils/constants/my_sizes.dart';
import '../../../utils/texts/my_texts.dart';
import '../../password_configuration/my_forget_password.dart';
import '../../sign_up/my_signup.dart';

class MyLoginForm extends StatefulWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  State<MyLoginForm> createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MyTexts.email,
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputFields),

            //password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputFields / 2),

            // Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(MyTexts.rememberMe),
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyForgetPassword(),
                      ),
                    );
                  },
                  child: const Text(MyTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwSections),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyNavigationMenu(),
                    ),
                  );
                },
                child: const Text(MyTexts.signIn),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems),

            //Create Account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MySignupScreen(),
                    ),
                  );
                },
                child: const Text(MyTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
