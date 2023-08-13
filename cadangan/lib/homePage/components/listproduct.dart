import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var imageText = [
      {'text': 'Jacket', 'img': "assets/images/listproduct/jacket.jpeg"},
      {'text': 'Hat', 'img': "assets/images/listproduct/topi.jpeg"},
      {'text': 'Clothes', 'img': "assets/images/listproduct/baju.jpeg"},
      {'text': 'Shoes', 'img': "assets/images/listproduct/sepatu.jpeg"},
      {'text': 'Accessories', 'img': "assets/images/listproduct/accesoris.jpeg"},
      {'text': 'Pants', 'img': "assets/images/listproduct/celana.jpeg"},
    ];

    return Container(
      padding: const EdgeInsets.only(top: 20, left: 12, right: 20),
      height: 135,
      child: ListView (
        scrollDirection: Axis.horizontal,
        children: imageText.map((e) => Container(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    e['img']!,
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    e['text']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ).toList(), 
      )
    );
  }
}