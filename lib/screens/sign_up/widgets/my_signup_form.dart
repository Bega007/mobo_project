import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import '../../../my_providers.dart';

import '../../../utils/constants/my_sizes.dart';
import '../../../utils/texts/my_texts.dart';
import '../../../utils/validator/validators.dart';
import '../my_success_screen.dart';
import 'my_terms_conditions_checkbox.dart';

class MySignupForm extends StatefulWidget {
  const MySignupForm({
    super.key,
  });

  @override
  State<MySignupForm> createState() => _MySignupFormState();
}

class _MySignupFormState extends State<MySignupForm> {
  GlobalKey<State<StatefulWidget>> formKey = GlobalKey();
  final firstnameCotroller = TextEditingController();
  final lastnameCotroller = TextEditingController();
  final usernameCotroller = TextEditingController();
  final emailCotroller = TextEditingController();
  final phonenumberCotroller = TextEditingController();
  final paswordController = TextEditingController();

  Future<void> onRegistrationButtonTap() async {
    final scope = ProviderScope.containerOf(context, listen: false);
    final apiClient = scope.read(apiClientProvider);
    final authController = scope.read(authControllerProvider.notifier);

    try {
      final response = await apiClient.signUp(
        firstName: firstnameCotroller.text,
        lastName: lastnameCotroller.text,
        username: usernameCotroller.text,
        password: paswordController.text,
        email: emailCotroller.text,
      );

      //authController.onSignedIn(response);

      if (mounted) {
        await Navigator.push<Widget>(
          context,
          MaterialPageRoute(
            builder: (context) => const MySuccessScreen(
              animation: 'assets/animations/success.json',
              title: 'Good',
              subtitle: 'success',
            ),
          ),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: firstnameCotroller,
                  validator: (value) => Validator.phoneValidator(context, value),
                  decoration: const InputDecoration(
                    labelText: MyTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: MySizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: lastnameCotroller,
                  validator: (value) => Validator.phoneValidator(context, value),
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
            controller: usernameCotroller,
            validator: (value) => Validator.phoneValidator(context, value),
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          //Email
          TextFormField(
            controller: emailCotroller,
            validator: (value) => Validator.validateEmail(context, value),
            expands: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: MyTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          //Phone Number
          TextFormField(
            controller: phonenumberCotroller,
            validator: (value) => Validator.phoneValidator(context, value),
            expands: false,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: MyTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: MySizes.spaceBtwInputFields),

          // Password
          TextFormField(
            controller: paswordController,
            validator: (value) => Validator.phoneValidator(context, value),
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
              onPressed: onRegistrationButtonTap,
              child: const Text(MyTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
