import 'package:flutter/material.dart';
import 'package:r34_01/widgets/container_home.dart';
import 'package:r34_01/widgets/custom_search.dart';
import 'package:r34_01/widgets/drawer.dart';
import 'package:r34_01/widgets/home_category1.dart';
import 'package:r34_01/widgets/home_category2.dart';
import 'package:r34_01/widgets/name_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            NameStyle(fontSize: 22),
            Text(
              "Your Daily Needs",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            AppBar(title: Text("Menu", style: TextStyle(fontSize: 15))),
            DrawerList(label: "Invited Friend", onPressed: () {}),
            DrawerList(label: "About Us", onPressed: () {}),
            DrawerList(label: "FAQs", onPressed: () {}),
            DrawerList(label: "Terms & Conditions", onPressed: () {}),
            DrawerList(label: "Help Center", onPressed: () {}),
            DrawerList(label: "Rate this App", onPressed: () {}),
            DrawerList(label: "Privacy Policy", onPressed: () {}),
            DrawerList(label: "Contact Us", onPressed: () {}),
            SizedBox(height: 30),
            DrawerList(label: "Logout", onPressed: () {}),
          ],
        ),
      ),

      body: ListView(
        children: [
          ContainerHome(),
          HomeCategory1(categoryLabel: 'Popular Packs'),
          SizedBox(height: 20),
          HomeCategory2(categoryLabel: 'Our New Item'),
        ],
      ),
    );
  }
}
