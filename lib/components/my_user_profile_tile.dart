import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/my_profile_editing.dart';
import '../utils/constants/my_colors.dart';
import '../utils/constants/my_image_string.dart';
import 'my_circular_image.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(
        image: MyImages.avatar,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Plany Planyyev',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyColors.white),
      ),
      subtitle: Text(
        'support@gmail.com.tm',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: MyColors.white),
      ),
      trailing: IconButton(
        onPressed: () {
          Navigator.push<Widget>(
            context,
            MaterialPageRoute(
              builder: (context) => const MyProfileEditingScreen(),
            ),
          );
        },
        icon: const Icon(
          Iconsax.edit,
          color: MyColors.white,
        ),
      ),
    );
  }
}
