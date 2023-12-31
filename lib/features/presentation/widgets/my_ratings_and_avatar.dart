import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/core/utils/constants/my_colors.dart';
import 'package:mobo_project/core/utils/constants/my_image_string.dart';
import 'package:mobo_project/core/utils/constants/my_sizes.dart';
import 'package:mobo_project/features/presentation/widgets/my_user_avatar.dart';

class MyRatingsAndAvatar extends StatelessWidget {
  const MyRatingsAndAvatar({
    super.key,
    required this.gottenStars,
  });

  final int gottenStars;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.grey.withOpacity(0.3),
      height: 70,
      width: double.maxFinite,
      child: Row(
        children: [
          // Stars
          Wrap(
            children: List.generate(5, (index) {
              return Icon(
                Iconsax.star1,
                color: index < gottenStars
                    ? Colors.amber
                    : MyColors.textSecondary,
              );
            }),
          ),
          const SizedBox(
            width: MySizes.spaceBtwItems,
          ),
    
          const Text(
            '(4.0)',
            style: TextStyle(
              color: MyColors.textSecondary,
            ),
          ),
    
          const SizedBox(
            width: 70,
          ),
    
          // circle avatars
          const Row(
            children: [
              MyUserAvatar(
                image: MyImages.avatar,
              ),
              MyUserAvatar(
                image: MyImages.avatar1,
              ),
              MyUserAvatar(
                image: MyImages.avatar2,
              ),
              MyUserAvatar(
                image: MyImages.avatar3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

