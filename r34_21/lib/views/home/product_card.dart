import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';
import 'package:r34_21/views/product/product_detail_view.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  final String description;
  final double width;

  const ProductCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.description,
    this.width = 150,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
   
        final double parsedPrice =
            double.tryParse(price.replaceAll('\$', '')) ?? 0.0;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailView(
              product: ProductModel(
                title: name,
                imagePath: imagePath,
                price: parsedPrice,
                description: description,
              ),
            ),
          ),
        );
      },
      child: LayoutBuilder(
        builder: (context, constraints) {

          final titleFont = AppSizes.s16;
          final priceFont = AppSizes.s18;

          return Container(
 
            width: width,
            decoration: BoxDecoration(
              color: AppColors.lightTextColor,
 
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              border: Border.all(
                color: AppColors.borderColor,
                width: AppSizes.borderWidth,
              ),
            ),
            child: Padding(

              padding: const EdgeInsets.all(AppSizes.p8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          
                  Center(
                    child: Image.asset(
                      imagePath,

                      height: constraints.maxHeight * 0.38,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.fastfood,
                        size: 50,
                        color: AppColors.grey,
                      ),
                    ),
                  ),

          
                  SizedBox(height: constraints.maxHeight * 0.05),


                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: titleFont,
                      color: AppColors.darkTextColor,
                    ),
                  ),

    
                  Text(
                    '1kg, Price',
                    style: TextStyle(
                      fontSize: AppSizes.s12,
                      color: AppColors.secondaryTextColor,
                    ),
                  ),

                  const Spacer(),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: priceFont,
                          color: AppColors.darkTextColor,
                        ),
                      ),

                      Container(
                        width: constraints.maxWidth * 0.22,
                        height: constraints.maxWidth * 0.22,
                        decoration: BoxDecoration(

                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(
                            AppSizes.borderRadiusSm,
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: AppColors.lightTextColor,
                          size: constraints.maxWidth * 0.12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
