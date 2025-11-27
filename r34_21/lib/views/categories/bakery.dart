import 'package:flutter/material.dart';

class BakeryView extends StatelessWidget {
  const BakeryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bakery & Snacks")),
      body: const Center(
        child: Text(
          "Bakery Products Here",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
