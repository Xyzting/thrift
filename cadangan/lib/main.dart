import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thrift/allPage/allpage.dart';
void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 1',
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer( const Duration(seconds: 2),
    () => Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: const SecondScreen(),
          isIos: true,
          duration: const Duration(milliseconds: 1000),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        "assets/images/logo.png"
      )
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllPageJrn()
    );
  }
}