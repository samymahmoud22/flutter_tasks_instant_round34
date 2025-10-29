import 'package:flutter/material.dart';
import 'package:homepage/listproducts.dart';
import 'package:homepage/pageviewapp.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Product> sampleProducts = [
    Product(
      image: 'lib/images/item1.png',
      name: 'Fresh Carrots',
      details: 'Organic farm carrots 1kg',
      price: 25.0,
    ),
    Product(
      image: 'lib/images/item.png',
      name: 'Red Apples',
      details: 'Crisp and sweet apples 1kg',
      price: 30.0,
    ),
    Product(
      image: 'lib/images/item.png',
      name: 'Red Apples',
      details: 'Crisp and sweet apples 1kg',
      price: 30.0,
    ),
    Product(
      image: 'lib/images/item3.png',
      name: 'Red Apples',
      details: 'Crisp and sweet apples 1kg',
      price: 30.0,
    ),
    Product(
      image: 'lib/images/item4.png',
      name: 'Red Apples',
      details: 'Crisp and sweet apples 1kg',
      price: 30.0,
    ),
    Product(
      image: 'lib/images/item5.png',
      name: 'Red Apples',
      details: 'Crisp and sweet apples 1kg',
      price: 30.0,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBody() {
    switch (_selectedIndex) {
      case 0:
         return _homePage();
      case 1:
        return Center(child: Text("Search Page", style: TextStyle(fontSize: 24)));
      case 2:
        return Center(child: Text("Favorites Page", style: TextStyle(fontSize: 24)));
      case 3:
        return Center(child: Text("Profile Page", style: TextStyle(fontSize: 24)));
      case 4:
        return Center(child: Text("Settings Page", style: TextStyle(fontSize: 24)));
      default:
        return _homePage();
    }
  }

  Widget _homePage() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(0, 10, 0, 0),
          child: Column(
            children: [
              Image.asset('lib/images/carrot.png', width: 50, height: 50),
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      size: 25,
                    ),
                    Text("Haram st. Giza , Egypt"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Pageviewapp(),
              const SizedBox(height: 7),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(padding: EdgeInsetsDirectional.only(start: 8), child: Text("Start")),
                    Container(padding: EdgeInsetsDirectional.only(end: 8), child: Text("End")),
                  ],
                ),
              ),
              ListProducts(products: sampleProducts),
              const SizedBox(height: 7),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(padding: EdgeInsetsDirectional.only(start: 8), child: Text("Start")),
                    Container(padding: EdgeInsetsDirectional.only(end: 8), child: Text("End")),
                  ],
                ),
              ),
              ListProducts(products: sampleProducts),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
