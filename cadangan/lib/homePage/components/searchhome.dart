import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 360,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column (
        children: [
          Container(
            padding: const EdgeInsets.only(left: 23),
            child: const TextField(
              decoration: InputDecoration (
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 17,
                  color: Color.fromRGBO(158, 158, 158, 1),
                ),
                hintText: 'Search...',
                border: InputBorder.none,
                focusColor: Color.fromRGBO(158, 158, 158, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
