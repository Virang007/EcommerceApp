import 'package:britannia/Screens/constant/consts.dart';
import 'package:flutter/material.dart';

Widget bgwidget(Widget ? child){
  return Container(
    child: child,
    decoration: BoxDecoration(
     image: DecorationImage(image: AssetImage(imgBackground),fit:BoxFit.fill)
    ),
  );
}