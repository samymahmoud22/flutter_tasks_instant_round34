import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r34_21/modle/product_modle.dart';
import 'package:r34_21/providers/cart_providers.dart';
import 'package:r34_21/providers/favorite_provider.dart';

class BeveragesView extends StatelessWidget {
  final String title;

  BeveragesView({super.key, required this.title});

  final List<Product> beverages = [
    Product(
      name: "Diet Coke",
      price: "\$1.99",
      unit: "355ml, Price",
      image: "assets/images/beverage/coke.jpeg",
      description: '',
    ),
    Product(
      name: "Sprite Can",
      price: "\$1.50",
      unit: "325ml, Price",
      image: "assets/images/beverage/sprite.jpeg",
      description: '',
    ),
    Product(
      name: "Apple & Grape Juice",
      price: "\$15.99",
      unit: "2L, Price",
      image: "assets/images/beverage/treetop.jpeg",
      description: '',
    ),
    Product(
      name: "Orange Juice",
      price: "\$15.99",
      unit: "2L, Price",
      image: "assets/images/beverage/treetop2.jpeg",
      description: '',
    ),
    Product(
      name: "Coca Cola Can",
      price: "\$4.99",
      unit: "325ml, Price",
      image: "assets/images/beverage/coca.jpeg",
      description: '',
    ),
    Product(
      name: "Pepsi Can",
      price: "\$4.99",
      unit: "330ml, Price",
      image: "assets/images/beverage/pepsi.jpeg",
      description: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.filter_list, color: Colors.black),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: beverages.length,
        itemBuilder: (context, index) {
          final product = beverages[index];
          final isFav = favProvider.isFavorite(product);

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    product.image,
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        product.unit,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        product.price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 10),

                GestureDetector(
                  onTap: () {
                    favProvider.toggleFavorite(product);
                  },
                  child: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    color: isFav ? Colors.red : Colors.grey,
                    size: 26,
                  ),
                ),

                const SizedBox(width: 10),

                Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                    Provider.of<CartProvider>(context, listen: false).addToCart(product);
                  },
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}