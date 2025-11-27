import 'package:flutter/material.dart';

class MeatView extends StatelessWidget {
  const MeatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meat & Fish")),
      body: const Center(
        child: Text(
          "Meat & Fish Products Here",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
