import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';
import 'package:r34_21/views/auth/signin_view.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding.jpeg',
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Padding(

              padding: const EdgeInsets.all(AppSizes.p24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
      

                  // العنوان الرئيسي
                  Text(
                    "Welcome to our store",
                    textAlign: TextAlign.center,
                    style: TextStyle(

                      color: AppColors.lightTextColor,

                      fontSize: AppSizes.s28,
                      fontWeight: FontWeight.bold,

                      shadows: [Shadow(blurRadius: 8, color: AppColors.grey)],
                    ),
                  ),


                  const SizedBox(height: AppSizes.p16),


                  Text(
                    "Get your groceries in as fast as one hour",
                    textAlign: TextAlign.center,
                    style: TextStyle(

                      color: AppColors.lightTextColor,

                      fontSize: AppSizes.s16,
                      height: 1.4,

                      shadows: [Shadow(blurRadius: 6, color: AppColors.grey)],
                    ),
                  ),


                  const SizedBox(height: AppSizes.p40),

                  //"Get Started"
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SignInScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        // الخلفية
                        backgroundColor: AppColors.primaryColor,
        
                        foregroundColor: AppColors.lightTextColor,

                        padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.p16,
                        ),
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(
                            AppSizes.borderRadiusMd,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
        
                          fontSize: AppSizes.s18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(height: AppSizes.p40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
