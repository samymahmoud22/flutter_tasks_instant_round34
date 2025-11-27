import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r34_21/providers/cart_providers.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: cartProvider.cartItems.isEmpty
                ? const Center(
                    child: Text("Your cart is empty "),
                  )
                : ListView.builder(
                    itemCount: cartProvider.cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartProvider.cartItems[index];

                      return ListTile(
                        leading: Image.asset(item.image, width: 50),
                        title: Text(item.name),
                        subtitle: Text(item.price),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove_shopping_cart),
                          onPressed: () {
                            cartProvider.removeFromCart(item);
                          },
                        ),
                      );
                    },
                  ),
          ),

          // Total Price
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Total: \$${cartProvider.totalPrice.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}