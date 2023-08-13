import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemCart extends StatefulWidget {
  const ItemCart({super.key});

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  @override
  Widget build(BuildContext context) {
     final itemList = [
      {
        'name': 'Jacket Vintage 90s', 
        'img': 'assets/images/likeproduct/jaket2.png',
        'harga': 'Rp.529.500',
        'kateg': 'Jacket',
      },
      {
        'name': "MEN'S PANTS", 
        'img': 'assets/images/cardproduct/pants.png',
        'harga': 'Rp.345.899',
        'kateg': 'Pants',
      },
      {
        'name': 'Shoes Converse Cream 70s', 
        'img': 'assets/images/likeproduct/sepatu.png',
        'harga': 'Rp.599.999',
        'kateg': 'Shoes',
      },
    ];

    int count = 1;
    return SizedBox(
      height: 400,
      width: 355,
      child: ListView(
        padding: const EdgeInsets.only(top: 10, bottom: 0),
        scrollDirection: Axis.vertical,
        children: itemList.map((e) => Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1),
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            child: Container(
              width: 350,
              height: 130,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Stack (
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 15, left: 20),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        e['img']!
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 135, top: 25),
                    width: 140,
                    child: Text(
                      e['name']!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 135, top: 48),
                    width: 140,
                    child: Text(
                      e['kateg']!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 135, top: 87),
                    width: 120,
                    child: Text(
                      e['harga']!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only( left: 290, top: 5),
                    width: 120,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.trashCan,
                        size: 23,
                        color: Color.fromRGBO(13, 71, 161, 1),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only( left: 240, top: 80),
                    width: 100,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 3),
                      child: Row (
                        children: [
                            Container(
                            width: 35,
                            padding: const EdgeInsets.only(bottom: 0),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5, right: 7, top: 2),
                            alignment: Alignment.center,
                            child: Text(
                              '$count',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19
                              ),
                            )
                          ),
                          Container(
                            width: 35,
                            padding: const EdgeInsets.only(),
                            alignment: Alignment.topCenter,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  count += 1; 
                                });
                              },
                              icon: const Icon(
                                BootstrapIcons.plus_circle_fill,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ).toList()
      ),
    );
  }
}