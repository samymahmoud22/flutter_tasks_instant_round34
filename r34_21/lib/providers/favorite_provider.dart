import 'package:flutter/material.dart';
import '../modle/product_modle.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Product> _favorites = [];

  List<Product> get favorites => _favorites;

  bool isFavorite(Product product) {
    return _favorites.contains(product);
  }

  void toggleFavorite(Product product) {
    if (isFavorite(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }
}