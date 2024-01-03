import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../components/my_appbar.dart';
import '../components/my_circular_image.dart';
import '../components/my_profile_menu.dart';
import '../components/my_section_heading.dart';
import '../utils/constants/my_colors.dart';
import '../utils/constants/my_image_string.dart';
import '../utils/constants/my_sizes.dart';
import '../utils/helpers/my_helper_functions.dart';
import 'change_profiles/my_change_email.dart';
import 'change_profiles/my_change_name.dart';
import 'change_profiles/my_change_phone_number.dart';
import 'change_profiles/my_change_username.dart';

class MyProfileEditingScreen extends StatefulWidget {
  const MyProfileEditingScreen({super.key});

  @override
  State<MyProfileEditingScreen> createState() => _MyProfileEditingScreenState();
}

class _MyProfileEditingScreenState extends State<MyProfileEditingScreen> {
  late DateTime dateTime;
  final items = ['Male', 'Female'];
  int index = 0;

  @override
  void initState() {
    dateTime = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
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
                      child: const Text('change Profile Picture'),
                    ),
                  ],
                ),
              ),
              // Details
              const SizedBox(height: MySizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),
              const MySectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              MyProfileMenu(
                onPressed: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyChangeName(),
                    ),
                  );
                },
                title: 'Name',
                value: 'Plany Planyyev',
              ),
              MyProfileMenu(
                onPressed: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyChangeUserName(),
                    ),
                  );
                },
                title: 'Username',
                value: 'Plany Planyyev',
              ),

              const SizedBox(height: MySizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),
              const MySectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              MyProfileMenu(
                onPressed: () {},
                icon: Iconsax.copy,
                title: 'User Id',
                value: '1234',
              ),
              MyProfileMenu(
                onPressed: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyChangeEmail(),
                    ),
                  );
                },
                title: 'E-mail',
                value: 'support@gmail.com',
              ),
              MyProfileMenu(
                onPressed: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyChangePhoneNumber(),
                    ),
                  );
                },
                title: 'Phone Number',
                value: '+993-63-462299',
              ),
              MyProfileMenu(
                onPressed: () => showCupertinoModalPopup<Widget>(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      color:
                          MyHelperFunctions.isDarkMode(context) ? MyColors.black : MyColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Done'),
                          ),
                          Expanded(
                            child: CupertinoPicker(
                              itemExtent: 64,
                              onSelectedItemChanged: (index) {
                                setState(() => this.index = index);
                              },
                              children: items
                                  .map(
                                    (item) => Center(
                                      child: Text(item),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                title: 'Gender',
                value: items[index],
              ),
              MyProfileMenu(
                onPressed: () => showCupertinoModalPopup<Widget>(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      color:
                          MyHelperFunctions.isDarkMode(context) ? MyColors.black : MyColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Done'),
                          ),
                          Expanded(
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.date,
                              onDateTimeChanged: (date) {
                                dateTime = date;
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                title: 'Date of Birth',
                value: '${dateTime.day}-${dateTime.month}-${dateTime.year}',
              ),

              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
