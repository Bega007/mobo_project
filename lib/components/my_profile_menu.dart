import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/constants/my_sizes.dart';

class MyProfileMenu extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String title;
  final String value;

  const MyProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.onPressed,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Icon(icon, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
