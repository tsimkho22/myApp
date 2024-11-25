import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final List<String> images = [
    "assets/images/b1.jpg",
    "assets/images/b2.avif",
    "assets/images/b3.jpg",
    "assets/images/b4.avif",
    "assets/images/b5.jpeg",
    "assets/images/bb.webp",
  ];

  Widget _buildBanner(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          image: DecorationImage(
            image: AssetImage(
              imagePath,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: CarouselSlider(
          items: images.map((imagePath) => _buildBanner(imagePath)).toList(),
          options: CarouselOptions(
            height: 180,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 0,
            autoPlayCurve: Curves.ease,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(
              milliseconds: 1000,
            ),
            viewportFraction: 0.9,
          ),
        ),
      ),
    );
  }
}
