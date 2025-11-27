import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;


    final bannerHeight = screenWidth * 0.30;


    final actualHeight = bannerHeight < AppSizes.bannerMinHeight
        ? AppSizes.bannerMinHeight
        : bannerHeight;

    return Container(
      width: double.infinity,
      height: actualHeight,
      decoration: BoxDecoration(

        color: AppColors.primaryColor,


        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXl),

  
        image: const DecorationImage(
          image: AssetImage('assets/images/banner.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
