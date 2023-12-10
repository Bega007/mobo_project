import 'package:flutter/material.dart';
import 'package:mobo_project/utils/constants/my_colors.dart';
import 'package:mobo_project/widgets/my_circular_container.dart';
import 'package:mobo_project/widgets/my_curved_edges_widget.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const MyPrimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgesWidget(
      child: SizedBox(
        child: Container(
          color: MyColors.orange.withOpacity(0.6),

          // size,isFinite:
          child: Stack(
            children: [
              //Background Custom Shapes
              Positioned(
                  top: -150,
                  right: -250,
                  child: MyCircularContainer(
                    backgroundColor: MyColors.warning.withOpacity(0.2),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: MyCircularContainer(
                    backgroundColor: MyColors.warning.withOpacity(0.3),
                  )),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
