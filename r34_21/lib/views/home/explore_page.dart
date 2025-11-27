import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';
import 'package:r34_21/views/categories/bakery.dart';
import 'package:r34_21/views/categories/beverages.dart';
import 'package:r34_21/views/categories/dairy.dart';
import 'package:r34_21/views/categories/fruits.dart';
import 'package:r34_21/views/categories/meat.dart';
import 'package:r34_21/views/categories/oils.dart';

class ExplorerView extends StatelessWidget {
  const ExplorerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,

      appBar: AppBar(
        title: const Text(
          "Explore",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.scaffoldBackground,
        elevation: 0,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(AppSizes.p40),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .90,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final item = categories[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item["page"]),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: item["color"], 
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black12),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),

                  child: Image.asset(
                    item["image"],
                    fit: BoxFit.cover, 
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
//list category

List<Map<String, dynamic>> categories = [
  {
    "name": "Fruits",
    "image": "assets/images/fresh fruits.jpeg",
    "color": Color(0xFFDFFFE9),
    "page": const FruitsView(),
  },
  {
    "name": "Oils",
    "image": "assets/images/oils.jpeg",
    "color": Color(0xFFFFE9E5),
    "page": const OilsView(),
  },
  {
    "name": "Meat",
    "image": "assets/images/meats&fesh.jpeg",
    "color": Color(0xFFFFE6F1),
    "page": const MeatView(),
  },
  {
    "name": "Bakery",
    "image": "assets/images/bakery.jpeg",
    "color": Color(0xFFEDE2FF),
    "page": const BakeryView(),
  },
  {
    "name": "Dairy",
    "image": "assets/images/dariy&eggs.jpeg",
    "color": Color(0xFFFFF0D5),
    "page": const DairyView(),
  },
  {
    "name": "Beverages",
    "image": "assets/images/beverages.jpeg",
    "color": Color(0xFFDFF2FF),
    "page": BeveragesView(title: ''),
  },
];
