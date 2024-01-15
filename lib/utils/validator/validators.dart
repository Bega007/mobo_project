import 'package:flutter/material.dart';


class Validator {
  static String? emptyField(
    BuildContext context,
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    final trimmedValue = value.trimRight();
    if (trimmedValue.isEmpty) {
      return 'context.l10n.fillBlank';
    }
    return null;
  }

  /*static String? unSelected(
    BuildContext context,
    String? emptyMessage,
  ) {
    if (value == null) {
      return emptyMessage;
    }
    return null;
  }*/

  static String? phoneValidator(BuildContext context, String? value) {
    //final l10n = context.l10n;

    if (value == null || value.isEmpty) {
      return 'l10n.writePhoneNumber';
    }

    final trimmedValue = value.trim();
    if (value.length >= 2 || trimmedValue.length < 8) {
      const allowedPhonePrefixes = ['61', '62', '63', '64', '65', '70', '71'];
      if (allowedPhonePrefixes.contains(value.substring(0, 2))) {
        return null;
      }
    }
    return 'l10n.inCorrectPhoneNumber';
  }

  static String? validateEmail(BuildContext context, String? value) {
    RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isEmailValid = emailRegex.hasMatch(value ?? '');
    if (!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }
}
