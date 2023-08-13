import 'package:flutter/material.dart';
import 'package:thrift/likePage/components/likeproduct.dart';
import 'package:thrift/likePage/components/titleproductlike.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleLike(),
            LikeProduct()
          ],
        ),
      ), 
    );
  }
}