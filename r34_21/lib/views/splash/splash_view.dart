import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';
import 'package:r34_21/views/onboarding/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();


    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.successColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset('assets/images/logo.png', width: AppSizes.p200),
  
            AppSizes.verticalSpacer10,


            Text(
              "nectar",
              style: TextStyle(
            
                fontSize: AppSizes.s28,
                color: AppColors.lightTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),


            Text(
              "online groceries",
              style: TextStyle(
            
                fontSize: AppSizes.s14,
                color: AppColors.categoryPulsesBackground,
     
                letterSpacing: AppSizes.s10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
