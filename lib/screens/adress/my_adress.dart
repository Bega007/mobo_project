import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/screens/adress/widgets/my_single_address.dart';

import '../../components/my_appbar.dart';
import '../../utils/constants/my_colors.dart';
import '../../utils/constants/my_sizes.dart';
import 'my_add_new_adress.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.primary,
        onPressed: () => Navigator.push<Widget>(
          context,
          MaterialPageRoute(
            builder: (context) => const MyAddNewAddressScreen(),
          ),
        ),
        child: const Icon(
          Iconsax.add,
          color: MyColors.white,
        ),
      ),
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Adresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              MySingleAddress(selectedAddres: false),
              MySingleAddress(selectedAddres: true),
            ],
          ),
        ),
      ),
    );
  }
}
