import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/my_sizes.dart';
import '../../../utils/texts/my_texts.dart';
import '../my_verify_email.dart';
import 'my_terms_conditions_checkbox.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: MySizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          //Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: MyTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          // Terms & Conditions Checkbox
          const MyTermsAndConditionsCheckbox(),

          const SizedBox(height: MySizes.spaceBtwSections),

          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyVerifyEmailScreen(),
                  ),
                );
              },
              child: const Text(MyTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
