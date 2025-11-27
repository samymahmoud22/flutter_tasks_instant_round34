import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. الشعار (Logo)
        Center(
          child: Image.asset(
            'assets/images/logo.png',

            height: AppSizes.p24,
          ),
        ),


        AppSizes.verticalSpacer4,


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              Icons.location_on,
              color: AppColors.darkTextColor,
              size: AppSizes.s18,
            ),


            AppSizes.horizontalSpacer4,


            const Text(
              'Dhaka, Banassre',
              style: TextStyle(
                color: AppColors.darkTextColor,
                fontWeight: FontWeight.w600,

              ),
            ),
          ],
        ),
      ],
    );
  }
}
