import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobo_project/screens/my_all_markets_screen.dart';
import 'package:mobo_project/screens/my_home_screen.dart';
import 'package:mobo_project/screens/my_profile_screen.dart';
import 'package:mobo_project/screens/my_wishlist_screen.dart';
import 'package:mobo_project/utils/helpers/my_helper_functions.dart';

class MyNavigationMenu extends StatefulWidget {
  const MyNavigationMenu({super.key});

  @override
  State<MyNavigationMenu> createState() => _MyNavigationMenuState();
}

class _MyNavigationMenuState extends State<MyNavigationMenu> {
  int _selectedIndex = 0;

  

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    final darkMode = MyHelperFunctions.isDarkMode(context);

    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: darkMode ?Colors.orange :Colors.orange,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Iconsax.shop), label: 'Markets'),
            //BottomNavigationBarItem(icon: Icon(Iconsax.shopping_bag), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.heart), label: 'WishList'),
            BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'Profile'),
          ]),
      body: _screens[_selectedIndex],
    );
  }
}

final List<Widget> _screens = [
  const MyHomeScreen(),
  const MyAllMarketsScreen(),
  //const MyCartScreen(),
  const MyWishlistScreen(),
  const MyProfileScreen(),
];
