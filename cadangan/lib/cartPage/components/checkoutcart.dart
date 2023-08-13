import 'package:flutter/material.dart';

class CheckoutCart extends StatelessWidget {
  const CheckoutCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: double.maxFinite,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(50))
      ),
      child: Stack(
        children: [
          Container(
            height: 50,
            width: 360,
            margin: const EdgeInsets.only(left: 23, top: 20),
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
                      hintText: 'Enter Discount Code',
                      border: InputBorder.none,
                      focusColor: Color.fromRGBO(158, 158, 158, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 305, top: 21),
            child:  TextButton(
              onPressed: (){},
              child: const Text(
                "Apply",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(13, 71, 161, 1),
              ),
              )
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 23, top: 90),
                      child: const Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 23
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 74, right: 10),
                width: 150,
                child: const Text(
                  'Rp.1.475.398',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ),
            ],
          ),
          Expanded(
            child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 120),
            child: const Divider(
              color: Colors.grey,
              height: 36,
            )),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 23, top: 150),
                      child: const Text(
                        'Total',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                width: 200,
                child: const Text(
                  'Rp.1.475.398',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27
                  ),
                )
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 190),
            alignment: Alignment.center,
            child: SizedBox(
              width: 360,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[900], // foreground
                ),
                onPressed: () => {},
                child: const Text(
                  'Checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}