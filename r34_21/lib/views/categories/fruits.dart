import 'package:flutter/material.dart';

class FruitsView extends StatelessWidget {
  const FruitsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fresh Fruits & Vegetables")),
      body: const Center(
        child: Text(
          "Fruits Products Here",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
