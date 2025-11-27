import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';


//product Model

class ProductModel {
  final String title;
  final String imagePath;
  final double price;
  final String description;

  ProductModel({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.description,
  });
}


//Product Detail View

class ProductDetailView extends StatefulWidget {
  final ProductModel product;

  const ProductDetailView({super.key, required this.product});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  int quantity = 1;

  double get totalPrice => widget.product.price * quantity;

  void updateQuantity(bool isIncrease) {
    setState(() {
      if (isIncrease) {
        quantity++;
      } else if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.borderColor,
      appBar: AppBar(
        title: Text(
          widget.product.title,
          style: TextStyle(color: AppColors.darkTextColor),
        ),

        backgroundColor: AppColors.lightTextColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.darkTextColor),
      ),

      body: SingleChildScrollView(
        child: Padding(

          padding: const EdgeInsets.all(AppSizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(
                child: Container(
                  height: AppSizes.p250,
                  decoration: BoxDecoration(

                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadiusLg,
                    ),
                  ),
                  child: Image.asset(
                    widget.product.imagePath,
                    fit: BoxFit.contain,

                    errorBuilder: (context, error, stackTrace) => Center(
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: AppSizes.p40,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),

              AppSizes.verticalSpacer20,


              Text(
                widget.product.title,
                style: TextStyle(
                  fontSize: AppSizes.s28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkTextColor,
                ),
              ),

              AppSizes.verticalSpacer10,


              Text(
                widget.product.description,
                style: TextStyle(
                  fontSize: AppSizes.s16,
                  color: AppColors.secondaryTextColor,
                ),
              ),

              AppSizes.verticalSpacer20,


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    "\$${totalPrice.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: AppSizes.s28,
                      fontWeight: FontWeight.bold,

                      color: AppColors.successColor,
                    ),
                  ),


                  Container(

                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.p12,
                      vertical: AppSizes.p4,
                    ),
                    decoration: BoxDecoration(

                      border: Border.all(color: AppColors.borderColor),

                      borderRadius: BorderRadius.circular(
                        AppSizes.borderRadiusSm,
                      ),
                    ),
                    child: Row(
                      children: [

                        IconButton(
                          icon: Icon(
                            Icons.remove,

                            color: quantity > 1
                                ? AppColors.successColor
                                : AppColors.secondaryTextColor,
                          ),
                          onPressed: () => updateQuantity(false),
                        ),


                        Text(
                          "$quantity",
                          style: TextStyle(
                            fontSize: AppSizes.s18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkTextColor,
                          ),
                        ),


                        IconButton(
                          icon: Icon(
                            Icons.add,

                            color: AppColors.successColor,
                          ),
                          onPressed: () => updateQuantity(true),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              AppSizes.verticalSpacer30,


              ExpansionTile(
                tilePadding:
                    EdgeInsets.zero,
                title: Text(
                  "Product Detail",
                  style: TextStyle(
                    fontSize: AppSizes.s18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkTextColor,
                  ),
                ),
                children: [
                  Padding(

                    padding: const EdgeInsets.all(AppSizes.p12),
                    child: Text(
                      widget.product.description,
                      style: TextStyle(
                        fontSize: AppSizes.s16,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(color: AppColors.borderColor),


              ExpansionTile(
                tilePadding:
                    EdgeInsets.zero,
                title: Text(
                  "Nutritions",
                  style: TextStyle(
                    fontSize: AppSizes.s18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkTextColor,
                  ),
                ),
                trailing: Container(

                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.p12,
                    vertical: AppSizes.p10,
                  ),
                  decoration: BoxDecoration(
      
                    color: AppColors.lightGrey,
  
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadiusMd,
                    ),
                  ),
                  child: Text(
                    "100gr",
                    style: TextStyle(color: AppColors.secondaryTextColor),
                  ),
                ),
                children: [
                  Padding(

                    padding: const EdgeInsets.all(AppSizes.p12),
                    child: Text(
                      "Calories: 52 kcal\nFat: 0.2g\nCarbs: 14g\nSugar: 10g",
                      style: TextStyle(
                        fontSize: AppSizes.s16,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(color: AppColors.borderColor),


              ExpansionTile(
                tilePadding:
                    EdgeInsets.zero,
                title: Text(
                  "Review",
                  style: TextStyle(
                    fontSize: AppSizes.s18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkTextColor,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    5,

                    (i) => const Icon(
                      Icons.star,
                      color: AppColors.primaryAccent,
                      size: AppSizes.s20,
                    ),
                  ),
                ),
                children: [
                  Padding(

                    padding: const EdgeInsets.all(AppSizes.p12),
                    child: Text(
                      " Great quality!\n Fresh and tasty.\n Will definitely buy again!",
                      style: TextStyle(
                        fontSize: AppSizes.s16,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),

              AppSizes.verticalSpacer30,

   
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Added $quantity x ${widget.product.title} to cart!",
                        ),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(

                    backgroundColor: AppColors.successColor,

                    padding: const EdgeInsets.symmetric(vertical: AppSizes.p20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppSizes.borderRadiusMd,
                      ),
                    ),
                  ),
                  child: Text(
                    "Add To Cart - \$${totalPrice.toStringAsFixed(2)}",
                    style: TextStyle(
         
                      color: AppColors.lightTextColor,
                      fontSize: AppSizes.s18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
