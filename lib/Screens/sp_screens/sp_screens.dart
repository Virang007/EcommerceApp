
import 'package:britannia/Screens/common_widget/app_logo.dart';
import 'package:britannia/Screens/constant/colors.dart';
import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/Screens/constant/text_str.dart';
import 'package:britannia/Screens/sp_screens/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {

  chanagesScreen(){
    Future.delayed(Duration(seconds: 3),(){
    Get.to(loginScreen());
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    chanagesScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child:Column(
          children: [
           Align(alignment: Alignment.topLeft,  child: Image.asset(icSplashBg,width: 300,)),
           22.heightBox,
           applogo(),
           appname.text.fontFamily(bold).white.size(22).make(),
           const Spacer(),
           credits.text.white.fontFamily(semibold).make(),
           30.heightBox
          ],
        ) ),
    );
  }
}