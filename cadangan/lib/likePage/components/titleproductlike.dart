import 'package:flutter/material.dart';

class TitleLike extends StatelessWidget {
  const TitleLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      alignment: Alignment.center,
      child: const Text(
        "My Favorite",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28
        ),
      ),
    );
  }
}