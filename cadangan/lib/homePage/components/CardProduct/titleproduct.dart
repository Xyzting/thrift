import 'package:flutter/material.dart';

class TitleCardProduct extends StatelessWidget {
  const TitleCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5),
            child: const Text(
              "Special For You",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 130, top: 10),
            child: const Text(
              "See all",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
          ),
        ]
      ),
    );
  }
}