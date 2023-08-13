import 'package:flutter/material.dart';
import 'package:thrift/cartPage/components/checkoutcart.dart';
import 'package:thrift/cartPage/components/itemcart.dart';
import 'package:thrift/cartPage/components/titlecart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CardPageState();
}

class _CardPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
  double heightscreen = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SizedBox(
        height: heightscreen,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              TitleCart(),
              ItemCart(),
              CheckoutCart(),
            ],
          ),
        ),
      ), 
    );
  }
}