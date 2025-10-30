import 'package:flutter/material.dart';
import 'package:r34_01/pages/cart_page.dart';
import 'package:r34_01/pages/home_page.dart';
import 'package:r34_01/pages/menu_page.dart';
import 'package:r34_01/pages/profile_page.dart';
import 'package:r34_01/pages/save_page.dart';

class EntryPointUi extends StatefulWidget {
  const EntryPointUi({super.key});

  @override
  State<EntryPointUi> createState() => _EntryPointUiState();
}

class _EntryPointUiState extends State<EntryPointUi> {
  int selectedIndex = 0;

  // الصفحات اللي هيتبدل بينها
  final List<Widget> pages = [
    const HomePage(),
    const SavePage(),
    const CartPage(),
    const ProfilePage(),
    const MenuPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex], // الصفحة اللي بتتغير حسب الزرار
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
