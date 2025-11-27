import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r34_21/providers/favorite_provider.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Favorites"),
        centerTitle: true,
      ),
      body: favProvider.favorites.isEmpty
          ? const Center(
              child: Text("No favorites yet "),
            )
          : ListView.builder(
              itemCount: favProvider.favorites.length,
              itemBuilder: (context, index) {
                final product = favProvider.favorites[index];

                return ListTile(
                  leading: Image.asset(product.image, width: 50),
                  title: Text(product.name),
                  subtitle: Text(product.price),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      favProvider.toggleFavorite(product);
                    },
                  ),
                );
              },
            ),
    );
  }
}