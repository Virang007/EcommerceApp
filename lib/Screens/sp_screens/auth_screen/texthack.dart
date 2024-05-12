import 'dart:math';

import 'package:flutter/material.dart';

class mytest extends StatefulWidget {
  const mytest({super.key});

  @override
  State<mytest> createState() => _mytestState();
}

class _mytestState extends State<mytest> {

var cruntdtime ;
var m;
var minit;
var second;
var temp = 0;

// Random random = new Random();
// int randomNumber = Rand.nextInt(100); 
  chanagesScreen(){
    Future.delayed(Duration(milliseconds: 60),(){
      setState(() {
        cruntdtime  =  DateTime.now();
        minit = DateTime.now().minute;
         m = DateTime.now().minute;
         second = DateTime.now().second;
      });
      chanagesScreen();
      //  for (int i = 55; i == second;) {
      //      temp = Random().nextInt(8)+1;
      //    }
    });
  }

  // getr(){
  //   temp = Random().nextInt(10);
  // }
@override
  void initState() {
    // TODO: implement initState
     chanagesScreen();
    super.initState();
  }
// var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(child: Text("m : $minit"+":$second")),
            Center(child: Text("time : $temp"))
          ],
        ),
      ),
    );
  }
}