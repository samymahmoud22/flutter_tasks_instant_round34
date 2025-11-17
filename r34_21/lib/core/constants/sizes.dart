// lib/core/constants/app_sizes.dart

import 'package:flutter/material.dart';

class AppSizes {
  // المسافات الداخلية والخارجية
  static const double p4 = 4.0; 
  static const double p8 = 8.0; 
  static const double p12 = 12.0; 
  static const double p16 = 16.0; 
  static const double p20 = 20.0; 
  static const double p24 = 24.0; 
  static const double p40 = 40.0; 

  // أحجام خطوط النص
  static const double s10 = 10.0; 
  static const double s12 = 12.0; 
  static const double s14 = 14.0; 
  static const double s16 = 16.0; 
  static const double s20 = 20.0; 
  static const double s24 = 24.0; 
  
  // أحجام الحدود والزوايا
  static const double borderWidth = 1.0; 
  static const double borderRadiusSm = 8.0; 
  static const double borderRadiusMd = 12.0; 
  static const double borderRadiusLg = 15.0; 

  // الفواصل الرأسية والأفقية
  static const Widget verticalSpacer8 = SizedBox(height: p8);
  static const Widget verticalSpacer16 = SizedBox(height: p16);
  static const Widget horizontalSpacer4 = SizedBox(width: p4);
  static const Widget horizontalSpacer8 = SizedBox(width: p8);
}