// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:thrift/homePage/components/CardProduct/cardproduct.dart';
import 'package:thrift/homePage/components/CardProduct/titleproduct.dart';
import 'package:thrift/homePage/components/searchhome.dart';
import 'package:thrift/homePage/components/titlehome.dart';
import 'package:thrift/homePage/components/bannerhome.dart';
import 'package:thrift/homePage/components/listproduct.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleHome(),
            SearchHome(),
            BannerHome(),
            ListProduct(),
            TitleCardProduct(),
            CardProduct(),
          ],
        ),
      ),
    );
  }
}
