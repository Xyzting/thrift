import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 33, left: 33, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(bottom: 1),
                  child: const Icon(
                    FontAwesomeIcons.bars,
                    size: 23,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 1),
            child: const Icon(
              FontAwesomeIcons.bell,
              size: 23,
            ),
          ),
        ],
      ),
    );
  }
}
