import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _currentAddress = "Getting location...";

  final List<Map<String, String>> offers = [
    {"image": "assets/images/product_1.png", "name": "Bananas", "status": "Fresh!!!", "price": "\$4.99"},
    {"image": "assets/images/product_6.png", "name": "Apples", "status": "Very fresh!!!", "price": "\$2.99"},
    {"image": "assets/images/product_1.png", "name": "Strawberry", "status": "Fresh!!!", "price": "\$6.99"},
  ];

  final List<Map<String, String>> bestSelling = [
    {"image": "assets/images/product_6.png", "name": "Apples", "status": "Fresh!!!", "price": "\$2.99"},
    {"image": "assets/images/product_8.png", "name": "Ginger", "status": "Very fresh!!!", "price": "\$1.99"},
    {"image": "assets/images/product_1.png", "name": "Banana", "status": "Fresh!!!", "price": "\$4.99"},
  ];



  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() => _currentAddress = "Location disabled");
      return;
    }

    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.deniedForever ||
        permission == LocationPermission.denied) {
      setState(() => _currentAddress = "Permission denied");
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    Placemark place = placemarks[0];
    setState(() {
      _currentAddress = "${place.locality}, ${place.country}";
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.45;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Account"),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 🔹 Logo
                Image.asset(
                  "assets/images/logo.png", 
                  height: 50,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),

                //  Location
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, color: Colors.black, size: 20),
                    const SizedBox(width: 5),
                    Flexible(
                      child: Text(
                        _currentAddress,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //  Search bar
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                      hintText: "Search Store",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                //  Banner 
                Container(
                  height: 150.0, 
                  width: double.infinity, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                    
                      image: AssetImage('assets/images/banner.png'), 
                      fit: BoxFit.cover, 
                    ),
                  ),
                ),
                
                const SizedBox(height: 30),

                //  Offers Section
                _buildSectionHeader("Exclusive offer"),
                _buildHorizontalCardList(offers, cardWidth),

                const SizedBox(height: 25),

                //  Best Selling Section
                _buildSectionHeader("Best Selling"),
                _buildHorizontalCardList(bestSelling, cardWidth),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        TextButton(
          onPressed: () {},
          child: const Text(
            "See all",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontalCardList(List<Map<String, String>> items, double cardWidth) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: EdgeInsets.only(right: index == items.length - 1 ? 0 : 15),
            child: _buildProductCard(item, cardWidth),
          );
        },
      ),
    );
  }

  Widget _buildProductCard(Map<String, String> item, double width) {
    return Container(
      width: width,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Image.asset(
                  item["image"]!,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: Icon(Icons.broken_image, size: 50, color: Colors.grey)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              item["name"]!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              item["status"]!,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item["price"]!,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white, size: 20),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}