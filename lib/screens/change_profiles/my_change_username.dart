import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../components/my_appbar.dart';
import '../../utils/constants/my_sizes.dart';

class MyChangeUserName extends StatelessWidget {
  const MyChangeUserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // custom appbar
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Change Name',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headings
            Text(
              'Use real name for easy verification.This name will appear on several pages.',
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(height: MySizes.spaceBtwItems),

            // text fieald and Button
            Form(
              child: Column(
                children: [
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: 'username',
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwSections),

            // Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
