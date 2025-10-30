import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ContainerHome extends StatefulWidget {
  const ContainerHome({super.key});

  @override
  State<ContainerHome> createState() => _ContainerHomeState();
}

class _ContainerHomeState extends State<ContainerHome> {
  List<String> items = [
    "assets/images/Slider 1.png",
    "assets/images/Slider 2.png",
    "assets/images/Slider 3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext, int itemIndex, int pageViewIndex) =>
          Image.asset(items[itemIndex]),
      options: CarouselOptions(
        height: 222,
        aspectRatio: 1,
        viewportFraction: 0.6,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 3),
        autoPlayInterval: Duration(seconds: 3),
        enlargeCenterPage: true,
        autoPlayCurve: Curves.linear,
      ),
    );
  }
}
