import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/utils/texts/my_texts.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: MySizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MyTexts.email),
            ),
            const SizedBox(
              height: MySizes.spaceBtwInputFields,
            ),
    
            //password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwInputFields / 2,
            ),
    
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
                    onPressed: () {},
                    child: const Text(MyTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwSections),
    
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(MyTexts.signIn),
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
    
            //Create Account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(MyTexts.signIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

