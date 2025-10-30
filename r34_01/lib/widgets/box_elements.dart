import 'package:flutter/material.dart';

class BoxElements extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String offPrice;

  const BoxElements({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.offPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.green, width: 0.9),
        ),
        width: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 160, height: 134, fit: BoxFit.fill),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle, style: TextStyle(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Text(
                  offPrice,
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
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
