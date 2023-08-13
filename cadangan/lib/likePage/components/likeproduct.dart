import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class LikeProduct extends StatefulWidget {
  const LikeProduct({super.key});

  @override
  State<LikeProduct> createState() => _LikeProductState();
}

class _LikeProductState extends State<LikeProduct> {

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
              color: Colors.white,
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
                          BootstrapIcons.heart_fill,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 11, right: 12),
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
      ItemModel(name: 'Mini Bag Brown', img : 'assets/images/likeproduct/tas.png', harga: 'Rp.799.999.00'),
      ItemModel(name: 'Shoes Converse Cream 70s', img: 'assets/images/likeproduct/sepatu.png', harga: 'Rp.599.999'),
      ItemModel(name: "Hightwaist Baby Blue", img: 'assets/images/likeproduct/celana.png', harga: 'Rp.345.899'),
      ItemModel(name: 'Jacket Levis Baby Blue', img: 'assets/images/likeproduct/jaket.png', harga: 'Rp.529.500'),
      ItemModel(name: 'Hat Coca-Cola Cream', img: 'assets/images/likeproduct/topi.png', harga: 'Rp.529.500'),
      ItemModel(name: 'Jacket Vintage 90s', img: 'assets/images/likeproduct/jaket2.png', harga: 'Rp.529.500'),
    ];

class ItemModel {
  final String name;
  final String img;
  final String harga;

  ItemModel({required this.name, required this.img, required this.harga});
}