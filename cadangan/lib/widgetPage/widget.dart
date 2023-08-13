import 'package:flutter/material.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          "WIDGET PAGE",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}