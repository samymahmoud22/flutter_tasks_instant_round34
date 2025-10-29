import 'package:flutter/material.dart';

class Product {
  final String image;
  final String name;
  final String details;
  final double price;
  int quantity;

  Product({
    required this.image,
    required this.name,
    required this.details,
    required this.price,
    this.quantity = 1,
  });
}

class ListProducts extends StatefulWidget {
  final List<Product> products;

  const ListProducts({super.key, required this.products});

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,  
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          final product = widget.products[index];
          return Container(
            width: 160,  
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // صورة المنتج
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        product.image,
                        width: double.infinity,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(product.name,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text(product.details,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${product.price.toStringAsFixed(2)} EGP",
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (product.quantity > 1) product.quantity--;
                                });
                              },
                              child: const Icon(Icons.remove_circle_outline,
                                  size: 20),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Text(product.quantity.toString()),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  product.quantity++;
                                });
                              },
                              child: const Icon(Icons.add_circle_outline,
                                  size: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
