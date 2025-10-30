import 'package:flutter/material.dart';
import 'package:r34_21/core/constants/color.dart';
import 'package:r34_21/core/constants/sizes.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      //  الشريط السفلي 
      bottomNavigationBar: _buildBottomNavigationBar(),
      
      //  المحتوى الأساسي 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // قسم الموقع والشعار 
              const SizedBox(height: AppSizes.p16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
                child: _buildLocationHeader(),
              ),
              
              const SizedBox(height: AppSizes.p16),

              //  شريط البحث المخصص
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
                child: _buildSearchSection(),
              ),
              
              const SizedBox(height: AppSizes.p24),

              // البانر الرئيسي 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
                child: _buildMainBanner(),
              ),
              
              const SizedBox(height: AppSizes.p40),

              // قسم العروض الحصرية 
              _buildHorizontalProductsSection(
                context,
                title: 'Exclusive Offer',
                productNames: ['Organic Bananas', 'Red Apple'],
                imagePaths: ['assets/images/fruites/product (1).png', 'assets/images/fruites/product (6).png'], 
              ),

              const SizedBox(height: AppSizes.p40),

              //  قسم الأكثر مبيعاً 
              _buildHorizontalProductsSection(
                context,
                title: 'Best Selling',
                productNames: ['Red Pepper', 'Ginger'],
                imagePaths: ['assets/images/vegitables/product (2).png', 'assets/images/vegitables/product (8).png'],
              ),

              const SizedBox(height: AppSizes.p40),
              
              //  قسم البقالة 
              _buildGroceriesCategories(),

              const SizedBox(height: AppSizes.p40),
              
              //   منتجات اللحوم والدواجن 
              _buildGroceriesProductsGrid(),

              const SizedBox(height: AppSizes.p40),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildLocationHeader() {
    return Column(
      children: [
        // شعار التطبيق
         Center(
        child: Image.asset(
            'assets/images/logo.png', 
            height: 30,
          ),

        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: AppColors.darkTextColor, size: 18),
            const SizedBox(width: 4),
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

  // شريط البحث
  Widget _buildSearchSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.lightTextColor, 
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.onboardingInactiveDot),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: AppColors.secondaryTextColor),
          const SizedBox(width: 10),
          Text('Search Store', style: TextStyle(color: AppColors.secondaryTextColor)),
        ],
      ),
    );
  }

  // (Fresh Vegetables)
  Widget _buildMainBanner() {
    return Container(
      height: 120, 
      decoration: BoxDecoration(
        color: AppColors.primarySuccess.withOpacity(0.8), 
        borderRadius: BorderRadius.circular(15),

        image: DecorationImage(image: AssetImage('assets/images/banner.png'), fit: BoxFit.cover),
      ),
      padding: const EdgeInsets.all(AppSizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fresh Vegetables',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.lightTextColor,
                ),
              ),
              Text(
                'Get Up To 40% OFF',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.lightTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const Icon(Icons.shopping_basket, color: AppColors.lightTextColor, size: 50), 
        ],
      ),
    );
  }

  Widget _buildHorizontalProductsSection(
      BuildContext context, {
      required String title,
      required List<String> productNames,
      required List<String> imagePaths,
    }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: AppSizes.p24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkTextColor,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: AppColors.primarySuccess,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.p16),


        SizedBox(
          height: 200, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productNames.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: AppSizes.p24,
                  right: index == productNames.length - 1 ? AppSizes.p24 : 0,
                ),
                child: _buildProductCard(
                  name: productNames[index],
                  imagePath: imagePaths[index],
                  price: '\$4.99',
                ),
              );
            },
          ),
        ),
      ],
    );
  }

 

 
  Widget _buildProductCard({
    required String name,
    required String imagePath,
    required String price,
    double width = 150,
  }) {
    return Container(
      width: width, 
      decoration: BoxDecoration(
        color: AppColors.lightTextColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.onboardingInactiveDot, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p16 / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Image.asset(
                imagePath, 
                height: 80,
                errorBuilder: (context, error, stackTrace) {

                  return const Icon(Icons.fastfood, size: 50, color: Colors.grey); 
                },
              ),
            ),
            const SizedBox(height: 10),
            
  
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.darkTextColor),
            ),
            Text(
              '1kg, PriceQ',
              style: TextStyle(color: AppColors.secondaryTextColor, fontSize: 12),
            ),
            const Spacer(), 
            

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.darkTextColor),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppColors.primarySuccess,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.add, color: AppColors.lightTextColor, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildGroceriesCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Groceries',
                style: TextStyle(
                  fontSize: AppSizes.p24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkTextColor,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: AppColors.primarySuccess,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.p16),
        

        SizedBox(
          height: 100, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4, 
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: AppSizes.p24,
                  right: index == 3 ? AppSizes.p24 : 0,
                ),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: index.isEven ? const Color(0xFFFFECE3) : const Color(0xFFE3F8FF), 
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    index.isEven ? 'Pulses' : 'Rice',
                    style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.darkTextColor),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }


  Widget _buildGroceriesProductsGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4, 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: AppSizes.p16,
          mainAxisSpacing: AppSizes.p16,
          childAspectRatio: 0.8, 
        ),
        itemBuilder: (context, index) {
 
          return _buildProductCard(
            name: index.isEven ? 'Beef Bone' : 'Broiler Chicken',
            imagePath: index.isEven ? 'assets/images/beef.png' : 'assets/images/chicken.png', 
            price: '\$4.99',
            width: double.infinity, 
          );
        },
      ),
    );
  }


 
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primarySuccess,
      unselectedItemColor: AppColors.secondaryTextColor,
      backgroundColor: AppColors.lightTextColor,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.storefront), label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ],
    );
  }
}