import 'package:flutter/material.dart';
import 'package:mobo_project/constants/my_colors.dart';
import 'package:mobo_project/constants/my_sizes.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';
import 'package:mobo_project/utils/texts/my_texts.dart';

class MyTermsAndConditionsCheckbox extends StatelessWidget {
  const MyTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${MyTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: MyTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? MyColors.white : MyColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? MyColors.white : MyColors.primary,
                  ),
            ),
            TextSpan(
                text: '${MyTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: MyTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? MyColors.white : MyColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? MyColors.white : MyColors.primary,
                  ),
            ),
          ]),
        )
      ],
    );
  }
}
