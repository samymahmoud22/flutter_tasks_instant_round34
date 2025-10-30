import 'package:flutter/material.dart';
import 'package:market_app/screens/home_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'MainFont', 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(), 
    );
  }
}