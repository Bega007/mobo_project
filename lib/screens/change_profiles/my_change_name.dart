import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../components/my_appbar.dart';
import '../../data/models/profile.dart';
import '../../my_providers.dart';
import '../../utils/constants/my_sizes.dart';

class MyChangeName extends StatefulWidget {
  const MyChangeName({super.key})
  
  @override
  State<MyChangeName> createState() => _MyChangeNameState();
}

class _MyChangeNameState extends State<MyChangeName> {
  GlobalKey<State<StatefulWidget>> formKey = GlobalKey();

  final editfirstnameCotroller = TextEditingController();

  final editlastnameCotroller = TextEditingController();  

  Future<void> onSaveButtonTap() async {
    final scope = ProviderScope.containerOf(context, listen: false);
    final apiClient = scope.read(apiClientProvider);
    final authController = scope.read(authControllerProvider.notifier);

     try {
      final Profile = await apiClient.getProfile(
        firstName: editfirstnameCotroller.text,
        lastName: editlastnameCotroller.text,
    } catch (e) {
      log(e.toString());
    }
  }
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
              key: GlobalKey(),
              child: Column(
                children: [
                  TextFormField(
                    controller: editfirstnameCotroller,
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: 'first name',
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                  const SizedBox(height: MySizes.spaceBtwInputFields),
                  TextFormField(
                    controller: editlastnameCotroller,
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: 'last name',
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
