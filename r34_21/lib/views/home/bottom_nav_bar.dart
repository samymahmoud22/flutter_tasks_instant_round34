import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart'; // تصحيح الاستيراد

/// شريط التنقل السفلي المخصص
class HomeBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const HomeBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      elevation: 0,

      backgroundColor: AppColors.lightTextColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
   
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.secondaryTextColor,


      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront_outlined),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
      ],
    );
  }
}
