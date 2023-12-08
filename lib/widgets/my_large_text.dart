import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyLargeTextIcon extends StatelessWidget {
  final double size;
  final String text;
  final Color colors;
  final IconData icon;

  const MyLargeTextIcon({
    super.key,
    required this.text,
    this.colors = Colors.orange,
    this.icon = Iconsax.notification5,
    this.size = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        top: 90,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size,
              ),
            ),
          ),
          Icon(
            icon,
            color: colors,
            size: 30,
          ),
        ],
      ),
    );
  }
}
