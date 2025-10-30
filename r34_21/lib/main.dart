import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/views/home/home_view.dart';
 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
           debugShowCheckedModeBanner: false, 
      
      theme: ThemeData(
          fontFamily: 'AppMainFont',    
        primaryColor: AppColors.primarySuccess,
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: AppColors.darkTextColor,
          displayColor: AppColors.darkTextColor,
        ),

        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          primary: AppColors.primarySuccess,
          secondary: AppColors.primaryAccent,
        ),
      ),
      home: const HomeView(), 
    );
  }
}