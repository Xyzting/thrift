import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:thrift/cartPage/cart.dart';
import 'package:thrift/likePage/like.dart';
import 'package:thrift/homePage/home.dart';
import 'package:thrift/userPage/user.dart';
import 'package:thrift/widgetPage/widget.dart';

const List<TabItem> items = [
  TabItem(
    icon: BootstrapIcons.grid,
    title: 'Unknown',
  ),
  TabItem(
    icon: BootstrapIcons.heart,
    title: 'Wishlist',
  ),
  TabItem(
    icon: BootstrapIcons.house,
    title: 'Home',
  ),
  TabItem(
    icon: BootstrapIcons.cart,
    title: 'Cart',
  ),
  TabItem(
    icon: BootstrapIcons.person,
    title: 'Profile',
  ),
];


class AllPageJrn extends StatefulWidget {
  const AllPageJrn({super.key});

  @override
  State<AllPageJrn> createState() => _AllPageJrnState();
}

class _AllPageJrnState extends State<AllPageJrn> {

  final screens = const [
    WidgetPage(),
    LikePage(),
    HomePage(),
    CartPage(),
    UserPage(),
  ];

  int visit = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: screens[visit],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(158, 158, 158, 1))
        ),
        padding: const EdgeInsets.only(top: 0),
        child: BottomBarDivider(
          items: items,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          color: const Color.fromRGBO(13, 71, 161, 1),
          colorSelected: const Color.fromRGBO(13, 71, 161, 1),
          indexSelected: visit,
          onTap: (index) => setState(() {
            visit = index;
          }),
          styleDivider: StyleDivider.bottom,
          countStyle:const CountStyle(
            background: Colors.white,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}