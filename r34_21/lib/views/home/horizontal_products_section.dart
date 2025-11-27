import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';
import 'package:r34_21/modle/product_modle.dart';
import 'package:r34_21/views/home/product_card.dart';

class HorizontalProductsSection extends StatelessWidget {
  final String title;

  final List<Product> products;

  const HorizontalProductsSection({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final cardWidth = screenWidth * 0.45;
    final cardHeight = screenWidth * 0.52;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: AppSizes.s24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkTextColor,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
      
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: AppSizes.p16),


        SizedBox(
          height: cardHeight,
          child: ListView.builder(

            padding: const EdgeInsets.only(left: AppSizes.p24),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (_, index) {
              final product = products[index];

              return Padding(

                padding: EdgeInsets.only(
                  right: index == products.length - 1
                      ? AppSizes.p24
                      : AppSizes.p16
                ),
                child: SizedBox(
                  width: cardWidth,
                  child: ProductCard(

                    name: product.name,
                    imagePath: product.image,
                    price: product.price,
                    description: product.description,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
