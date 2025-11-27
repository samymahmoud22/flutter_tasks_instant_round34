import 'package:flutter/material.dart';
import 'package:r34_21/modle/product_modle.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  double get totalPrice {
    double total = 0;
    for (var item in _cartItems) {
      total += double.tryParse(item.price.replaceAll("\$", "")) ?? 0;
    }
    return total;
  }
}