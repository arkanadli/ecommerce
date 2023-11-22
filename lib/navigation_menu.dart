import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        backgroundColor: isDarkMode ? GColors.black : Colors.white,
        indicatorColor: isDarkMode
            ? GColors.white.withOpacity(0.1)
            : GColors.black.withOpacity(0.1),
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
        onDestinationSelected: (value) {
          currentPage = value;
          setState(() {});
        },
        selectedIndex: currentPage,
      ),
      body: IndexedStack(
        index: currentPage,
        children: const [
          HomeScreen(),
          Text('asdasdasd'),
          Text('asdasd324'),
          Text('asdasd1sda'),
        ],
      ),
    );
  }
}
