import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';
import 'package:r34_21/providers/cart_providers.dart';
import 'package:r34_21/views/splash/splash_view.dart';

import 'package:r34_21/providers/favorite_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'AppMainFont',

        /// Primary color
        primaryColor: AppColors.successColor,

        /// Scaffold background
        scaffoldBackgroundColor: AppColors.borderColor,

        /// AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.lightTextColor,
          iconTheme: IconThemeData(color: AppColors.darkTextColor),
          elevation: 0,
        ),

        /// Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.successColor,
            padding: const EdgeInsets.symmetric(vertical: AppSizes.p15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
            ),
          ),
        ),

        /// Text theme
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: AppColors.darkTextColor,
          displayColor: AppColors.darkTextColor,
        ),

        /// Color Scheme
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(
              primary: AppColors.successColor,
              secondary: AppColors.primaryAccent,
            ),
      ),

      home: const SplashView(),
    );
  }
}
