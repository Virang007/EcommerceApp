import 'package:britannia/Screens/constant/consts.dart';
import 'package:flutter/material.dart';

class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: "cart is emty".text.color(darkFontGrey).makeCentered(),
      ),
    );
  }
}