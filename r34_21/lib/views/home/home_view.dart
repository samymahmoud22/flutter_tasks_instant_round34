import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/sizes.dart';
import 'package:r34_21/modle/product_modle.dart';
import 'package:r34_21/views/home/home_header.dart';
import 'package:r34_21/views/home/horizontal_products_section.dart';
import 'package:r34_21/views/home/main_banner.dart';
import 'package:r34_21/views/home/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});


  final List<Product> exclusiveProducts = const [
    Product(
      name: 'Organic Bananas',
      price: '4.99\$',
      image: 'assets/images/fruits/product1.png',
      description: 'Fresh organic bananas, rich in potassium.',
      unit: '',
    ),
    Product(
      name: 'Red Apple',
      price: '2.99\$',
      image: 'assets/images/fruits/product6.png',
      description: 'Crisp and juicy red apples.',
      unit: '',
    ),
  ];


  final List<Product> bestSellingProducts = const [
    Product(
      name: 'Red Pepper',
      price: '1.99\$',
      image: 'assets/images/vegetables/product2.png',
      description: 'Fresh red pepper with vibrant color.',
      unit: '',
    ),
    Product(
      name: 'Ginger',
      price: '3.5\$',
      image: 'assets/images/vegetables/product8.png',
      description: 'Aromatic fresh ginger with strong flavor.',
      unit: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppSizes.verticalSpacer16,


              const HomeHeader(),

              AppSizes.verticalSpacer16,


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
                child: const SearchBarSection(),
              ),

              AppSizes.verticalSpacer24,


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
                child: const MainBanner(),
              ),

              AppSizes.verticalSpacer40,

  
              HorizontalProductsSection(
                title: 'Exclusive Offer',

                products: exclusiveProducts,
              ),

              AppSizes.verticalSpacer40,


              HorizontalProductsSection(
                title: 'Best Selling',

                products: bestSellingProducts,
              ),


              AppSizes.verticalSpacer40,
            ],
          ),
        ),
      ),
    );
  }
}
