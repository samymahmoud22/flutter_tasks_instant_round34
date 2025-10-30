import 'package:flutter/material.dart';
import 'package:r34_01/widgets/box_elements.dart';

class HomeCategory1 extends StatelessWidget {
  final String categoryLabel;

  const HomeCategory1({super.key, required this.categoryLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryLabel,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 237,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BoxElements(
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/packs.png',
              ),
              BoxElements(
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/packs.png',
              ),
              BoxElements(
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/packs.png',
              ),
              BoxElements(
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/packs.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
