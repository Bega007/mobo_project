import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/utils/constants/my_image_string.dart';
import 'package:mobo_project/utils/constants/my_sizes.dart';
import 'package:mobo_project/widgets/change_profiles/my_change_name.dart';
import 'package:mobo_project/widgets/my_appbar.dart';
import 'package:mobo_project/widgets/my_circular_image.dart';
import 'package:mobo_project/widgets/my_profile_menu.dart';
import 'package:mobo_project/widgets/my_section_heading.dart';

class MyProfileEditingScreen extends StatelessWidget {
  const MyProfileEditingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(showBackArrow: true,title: Text('Profile'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MyCircularImage(
                      image: MyImages.avatar,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('change Profile Picture')),
                  ],
                ),
              ),
              // Details
              const SizedBox(
                height: MySizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              const MySectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
        
              MyProfileMenu(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyChangeName()));
                },
                title: 'Name',
                value: 'Plany Planyyev',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'Plany Planyyev',
              ),
        
              const SizedBox(
                height: MySizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              const MySectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
        
              MyProfileMenu(
                onPressed: () {},
                icon: Iconsax.copy,
                title: 'User Id',
                value: '1234',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'support@gmail.com',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+993-63-462299',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '05 Dec 1994',
              ),
        
              const Divider(),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
        
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
