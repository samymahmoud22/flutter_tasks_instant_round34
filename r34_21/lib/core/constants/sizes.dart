import 'package:flutter/material.dart';

class AppSizes {
  // =============================
  // Padding / Margins
  // =============================
  static const double p4 = 4.0;
  static const double p5 = 5.0;
  static const double p8 = 8.0;
  static const double p10 = 10.0;
  static const double p12 = 12.0;
  static const double p15 = 15.0;
  static const double p16 = 16.0;
  static const double p20 = 20.0;
  static const double p24 = 24.0;
  static const double p30 = 30.0;
  static const double p40 = 40.0;
  static const double p200 = 200.0;
  static const double p250 = 250.0; // ارتفاع صورة المنتج في التفاصيل

  // ثابت التباعد الافتراضي (Added)
  static const double defaultPadding = p16;

  // =============================
  // Font sizes
  // =============================
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s24 = 24.0;
  static const double s28 = 28.0;
  static const double s80 = 80.0;
  static const double s60 = 60.0;

  // =============================
  // Border widths
  // =============================
  static const double borderWidth = 1.0;
  static const double borderWidthSm = 1.5;

  // =============================
  // Border radius
  // =============================
  static const double borderRadiusSm = 8.0;
  static const double borderRadiusMd = 12.0;
  static const double borderRadiusLg = 15.0;
  static const double borderRadiusXl = 20.0;

  // =============================
  // Vertical Spacers
  // =============================
  static const Widget verticalSpacer4 = SizedBox(height: p4);
  static const Widget verticalSpacer5 = SizedBox(height: p5);
  static const Widget verticalSpacer8 = SizedBox(height: p8);
  static const Widget verticalSpacer10 = SizedBox(height: p10);
  static const Widget verticalSpacer12 = SizedBox(height: p12);
  static const Widget verticalSpacer16 = SizedBox(height: p16);
  static const Widget verticalSpacer20 = SizedBox(height: p20);
  static const Widget verticalSpacer24 = SizedBox(height: p24);
  static const Widget verticalSpacer30 = SizedBox(height: p30);
  static const Widget verticalSpacer40 = SizedBox(height: p40);

  // =============================
  // Horizontal Spacers
  // =============================
  static const Widget horizontalSpacer4 = SizedBox(width: p4);
  static const Widget horizontalSpacer8 = SizedBox(width: p8);
  static const Widget horizontalSpacer10 = SizedBox(width: p10);
  static const Widget horizontalSpacer16 = SizedBox(width: p16);
  static const Widget horizontalSpacer24 = SizedBox(width: p24);
  static const Widget horizontalSpacer30 = SizedBox(width: p30);
  static const Widget horizontalSpacer40 = SizedBox(width: p40);

  // =============================
  // Special
  // =============================
  static const double bannerMinHeight = 120.0;
}
