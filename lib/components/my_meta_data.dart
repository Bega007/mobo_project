import 'package:flutter/material.dart';

import '../utils/constants/my_colors.dart';
import '../utils/constants/my_sizes.dart';
import 'my_section_heading.dart';

class MetaDataWidget extends StatelessWidget {
  const MetaDataWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: MySizes.defaultSpace,
        left: MySizes.defaultSpace,
        bottom: MySizes.defaultSpace,
      ),
      child: Column(
        children: [
          // Product Name
          MySectionHeading(
            title: '',
            showActionButton: false,
            textColor: MyColors.textSecondary,
          ),
    
          // Price
           MySectionHeading(
            title: '',
            showActionButton: false,
            textColor: MyColors.warning,
          ),
          
        ],
      ),
    );
  }
}
