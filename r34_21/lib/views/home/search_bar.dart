import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.p16,
        vertical: AppSizes.p12,
      ),
      decoration: BoxDecoration(
        color: AppColors.grey,

        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),

        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [

          Icon(
            Icons.search,
            color: AppColors.secondaryTextColor,
            size: AppSizes.s24,
          ),

          const SizedBox(width: AppSizes.p10),
      
          Expanded(
            child: TextField(
              style: TextStyle(
                color: AppColors.darkTextColor,
                fontSize: AppSizes.s14,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                isDense: true,
                border: InputBorder.none,
                hintText: "Search Store",
                hintStyle: TextStyle(
                  color: AppColors.secondaryTextColor,
                  fontSize: AppSizes.s14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
