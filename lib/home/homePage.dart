import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        items: [
          // 1st Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/600"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2nd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/600/92c952"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 3rd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/600/771796"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 4th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/600/24f355"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 5th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/600/d32776"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],

        // Slider Container properties
        options: CarouselOptions(
          height: 150.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 0,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
