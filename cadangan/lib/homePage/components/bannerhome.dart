import 'package:blur/blur.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  static List<String> images = [
    'assets/images/banner/bghdsepatu.jpg',
    'assets/images/banner/bgjaket.jpg',
    'assets/images/banner/bajuhd.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container (
      height: 220,
      width: 360,
      margin: const EdgeInsets.only(top: 25),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ), 
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child:  CarouselSlider.builder(
              options: CarouselOptions(
                height: 220,
                autoPlay: true,
                viewportFraction: 1,
              ),
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                final imageList = images[index];
                return imageBanner(imageList, index);
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 30),
            child: const Text(
              'Super Sale',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 65, left: 30),
            child: const Text(
              "Discount",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 120, left: 30),
            child: const Text(
              "Up to",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 95, left: 85),
            child: const Text(
              "50%",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Container(
            width: 170,
            padding: const EdgeInsets.only(top: 155, left: 25),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue[900], // foreground
              ),
              onPressed: () => {},
              child: const Text(
                'Shop Now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageBanner(String imageList, int index) => Image.asset(
        imageList,
        fit: BoxFit.cover,
        height: 220,
      ).blurred(
        blur: 0.5,
        blurColor: Colors.transparent,
      );
}