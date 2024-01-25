import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import '../data/models/profile.dart';
import '../my_providers.dart';
import '../screens/my_profile_editing.dart';
import '../utils/constants/my_colors.dart';
import 'my_circular_image.dart';

final getProfileProvider = FutureProvider((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getProfile();
});
class MyUserProfileTile extends ConsumerWidget {
  const MyUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final Profile = ref.watch(getProfileProvider);
   return Profile.when(
      data: (data) =>  ListTile(
      leading: MyCircularImage(
        image: data[index].image ?? '',
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        '${data[index].firstName}' '${data[index].lastName}',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyColors.white),
      ),
      subtitle: Text(
        data[index].email ?? '',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: MyColors.white),
      ),
      trailing: IconButton(
        onPressed: () {
          Navigator.push<Widget>(
            context,
            MaterialPageRoute(
              builder: (context) =>  MyProfileEditingScreen(profile: data[index],),
            ),
          );
        },
        icon: const Icon(
          Iconsax.edit,
          color: MyColors.white,
        ),
      ),
    ),
    error: (error, stackTress) {
        log(error.toString());
        log(stackTress.toString());
        return Text(error.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
