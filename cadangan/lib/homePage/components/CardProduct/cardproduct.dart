import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({super.key});

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 120),
      child: AutoHeightGridView(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        itemCount: listItems.length,
        builder: (context, index)  {
          return Container(
            height: 210,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(listItems[index].img),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 135, bottom: 100),
                    child: GestureDetector(                     
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(10))
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          BootstrapIcons.heart,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 11),
                  child: Text(
                    listItems[index].name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 13),
                  child: Text(
                    listItems[index].harga,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}

final List<ItemModel> listItems = [
      ItemModel(name: 'Hooded', img : 'assets/images/cardproduct/hoded.png', harga: 'Rp.799.999'),
      ItemModel(name: 'White Bag', img: 'assets/images/cardproduct/tas.png', harga: 'Rp.599.999'),
      ItemModel(name: "MEN'S PANTS", img: 'assets/images/cardproduct/pants.png', harga: 'Rp.345.899'),
      ItemModel(name: 'Boots Black MUW', img: 'assets/images/cardproduct/boots.png', harga: 'Rp.529.500'),
    ];

class ItemModel {
  final String name;
  final String img;
  final String harga;

  ItemModel({required this.name, required this.img, required this.harga});
}