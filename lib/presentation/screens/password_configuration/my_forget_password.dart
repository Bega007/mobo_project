import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/common/widgets/my_appbar.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/presentation/screens/password_configuration/my_reset_password.dart';
import 'package:mobo_project/utils/texts/my_texts.dart';

class MyForgetPassword extends StatelessWidget {
  const MyForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(
          MySizes.defaultSpace,
        ),
        child: Column(
          children: [
            // Headings
            Text(
              MyTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            Text(
              MyTexts.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: MySizes.spaceBtwSections * 2),

            // Text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: MyTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text(MyTexts.submit),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyResetPassword()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
