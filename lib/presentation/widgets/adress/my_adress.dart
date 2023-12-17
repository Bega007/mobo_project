import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/data/utils/constants/my_colors.dart';
import 'package:mobo_project/data/utils/constants/my_sizes.dart';
import 'package:mobo_project/presentation/widgets/adress/my_add_new_adress.dart';
import 'package:mobo_project/presentation/widgets/adress/widgets/my_single_address.dart';
import 'package:mobo_project/presentation/widgets/my_appbar.dart';

class MyAdressScreen extends StatelessWidget {
  const MyAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.primary,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyAddNewAdressScreen(),
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
