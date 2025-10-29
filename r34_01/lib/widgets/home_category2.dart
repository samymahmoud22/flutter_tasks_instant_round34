import 'package:flutter/material.dart';
import 'package:r34_01/widgets/box_elements.dart';

class HomeCategory2 extends StatelessWidget {
  final String categoryLabel;

  const HomeCategory2({super.key, required this.categoryLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child:  Row(
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
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
              BoxElements(
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
              BoxElements(
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
              BoxElements(
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
