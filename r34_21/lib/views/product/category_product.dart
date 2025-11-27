import 'package:flutter/material.dart';

class CategoryProductsView extends StatelessWidget {
  final String title;

  const CategoryProductsView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
 
    final List<Map<String, dynamic>> products = [
      {
        "name": "Product 1",
        "price": "20 EG",
        "image": "assets/images/product1.png",
      },
      {
        "name": "Product 2",
        "price": "35 EG",
        "image": "assets/images/product2.png",
      },
      {
        "name": "Product 3",
        "price": "15 EG",
        "image": "assets/images/product3.png",
      },
      {
        "name": "Product 4",
        "price": "40 EG",
        "image": "assets/images/product4.png",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: .75,
          ),
          itemBuilder: (context, index) {
            final item = products[index];

            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(18),
                    ),
                    child: Image.asset(
                      item["image"],
                      height: 110,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    item["name"],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 5),

                  Text(
                    item["price"],
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
