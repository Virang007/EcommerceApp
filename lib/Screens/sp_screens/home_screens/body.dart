import 'package:britannia/Screens/cart_screen/cart_screens.dart';
import 'package:britannia/Screens/categories_Screens/categories.dart';
import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/Screens/profile_screens/profile_screen.dart';
import 'package:britannia/Screens/sp_screens/home_screens/home_controller.dart';
import 'package:britannia/Screens/sp_screens/home_screens/home_screens.dart';
import 'package:flutter/material.dart';

class homeBody extends StatelessWidget {
  const homeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var controller =Get.put(HomeController());
    var navbarItem =[
     BottomNavigationBarItem(icon:Image.asset(icHome,width: 16,),label: home),
     BottomNavigationBarItem(icon:Image.asset(icCategories,width: 16,),label:categories),
     BottomNavigationBarItem(icon:Image.asset(icCart,width: 16,),label: cart),
     BottomNavigationBarItem(icon:Image.asset(icProfile,width: 16,),label: account),

    ];

    var body = [
      homeScreen(),
      categoryScreen(),
      cartScreen(),
      profileScreen()
    ];


    return Scaffold(
      body:Column(
        children: [
          Obx(() => Expanded(child: body.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          items: navbarItem,
          onTap: (Value){
            controller.currentNavIndex.value = Value;
          },
          ),
      ),
    );
  }
}