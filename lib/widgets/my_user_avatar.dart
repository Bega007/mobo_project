import 'package:flutter/material.dart';

class MyUserAvatar extends StatelessWidget {
  final String image;
  const MyUserAvatar({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 10,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
