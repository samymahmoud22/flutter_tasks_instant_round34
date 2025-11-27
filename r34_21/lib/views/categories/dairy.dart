import 'package:flutter/material.dart';

class DairyView extends StatelessWidget {
  const DairyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dairy & Eggs")),
      body: const Center(
        child: Text(
          "Dairy & Eggs Products Here",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
