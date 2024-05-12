import 'package:britannia/Screens/categories_Screens/categoryes_detiels.dart';
import 'package:britannia/Screens/common_widget/bg_widget.dart';
import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/app.dart';
import 'package:flutter/material.dart';

class categoryScreen extends StatelessWidget {
  const categoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
     Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing:8 ,mainAxisSpacing:8 ,mainAxisExtent:200 ),
           itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(catagoryImageList[index],height: 120,width: 200,fit: BoxFit.cover,),
                20.heightBox,
                catagoryTitleList[index].text.color(darkFontGrey).align(TextAlign.center).make().onTap(() {
              Get.to(()=>categoryDetails(title: catagoryTitleList[index]));
            })
              ],
            ).box.white.roundedSM.clip(Clip.antiAlias).outerShadowSm.make();
           }),
      ),
     )
    );
  }
}