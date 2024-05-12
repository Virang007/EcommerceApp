import 'package:britannia/Screens/common_widget/bg_widget.dart';
import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/app.dart';
import 'package:flutter/material.dart';

import 'item_details.dart';



class categoryDetails extends StatelessWidget {
  final String? title;
  const categoryDetails({Key? key,required this.title}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgwidget(
      Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children:List.generate(6, (index) => "mobile".text.color(darkFontGrey).fontFamily(bold).makeCentered().
                box.white.rounded.size(120,30).margin(EdgeInsets.symmetric(horizontal: 4)).make()),
              ),
            ),

            20.heightBox,
              Expanded(
                child: GridView.builder(
                  physics:  BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                   mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 250),
                   itemBuilder:(context ,index){
                    return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(imgP5,width: 200,height: 150, fit: BoxFit.cover,),
                            
                                "Lapto 4Gb/6Gb".text.color(darkFontGrey).make(),
                                10.heightBox,
                                 "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                                 10.heightBox
                              ],
                            ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(12)).make().onTap(() {
                              Get.to(()=>itemDetaile(title: "dummy items",));
                            });
                   }
                 ),
              )
          ],
        ),
      ),
    ));
  }
}