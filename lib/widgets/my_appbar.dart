import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const MyAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {},
                icon: Icon(Iconsax.arrow_left,
                    color: dark ? MyColors.white : MyColors.dark))
            : leadingIcon != null
                ? IconButton(onPressed: () {}, icon: const Icon(Iconsax.share))
                : null,
                title: title,
                actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
