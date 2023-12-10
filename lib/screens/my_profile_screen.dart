import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/widgets/my_appbar.dart';
import 'package:mobo_project/widgets/my_primary_header_container.dart';
import 'package:mobo_project/widgets/my_section_heading.dart';
import 'package:mobo_project/widgets/my_settings_menu_tile.dart';
import 'package:mobo_project/widgets/my_user_profile_tile.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          // Header
          MyPrimaryHeaderContainer(
            child: Column(
              children: [
                // AppBar
                MyAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: MyColors.white),
                  ),
                ),
                // The User Profile Card

                const MyUserProfileTile(),

                const SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
              ],
            ),
          ),
          // Body
          Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                // Acount Settings
                const MySectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),

                MySettingMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Addresses',
                  subtitle: 'Set shopping delivery address',
                  onTap: () {},
                ),

                MySettingMenuTile(
                  icon: Iconsax.heart,
                  title: 'Halanlarym',
                  subtitle: 'Halanlarym bellikler',
                  onTap: () {},
                ),
                MySettingMenuTile(
                  icon: Iconsax.shopping_bag,
                  title: 'My Cart',
                  subtitle: 'Add remove products to checkout',
                  onTap: () {},
                ),
                MySettingMenuTile(
                  icon: Iconsax.language_circle,
                  title: 'Interfeys dili',
                  subtitle: 'Dil üytgetmek üçin',
                  onTap: () {},
                ),
                MySettingMenuTile(
                  icon: Iconsax.message_text,
                  title: 'Kömek',
                  subtitle: 'Admin bilen habarlaşmak',
                  onTap: () {},
                ),

                MySettingMenuTile(
                  icon: Iconsax.notification,
                  title: 'Notification',
                  subtitle: 'Notifications for sale products etc',
                  onTap: () {},
                ),
                MySettingMenuTile(
                  icon: Icons.exit_to_app_rounded,
                  title: 'Ulgama gir',
                  subtitle: 'Ulgamy doly ygtybarly ulanmak üçin',
                  onTap: () {},
                ),
                //App setings
                const SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
                const MySectionHeading(
                  title: 'App Settings',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),

                MySettingMenuTile(
                  icon: Iconsax.setting,
                  title: 'Mode',
                  subtitle: 'Switch dark and light mode',
                  trailing: Switch(
                    activeColor: MyColors.warning,
                    inactiveThumbColor: MyColors.warning,
                    focusColor: MyColors.warning,
                    hoverColor: MyColors.warning,
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                MySettingMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subtitle: 'Turn on and Turn off geolocation',
                  trailing: Switch(
                    activeColor: MyColors.warning,
                    onChanged: (value) {},
                    value: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
