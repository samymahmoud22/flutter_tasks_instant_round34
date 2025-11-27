import 'package:flutter/material.dart';

class OilsView extends StatelessWidget {
  const OilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cooking Oil & Ghee")),
      body: const Center(
        child: Text(
          "Oils Products Here",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
