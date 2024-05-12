import 'package:britannia/Screens/common_widget/bg_widget.dart';
import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/Screens/profile_screens/componert/card_Button_profile.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
      Scaffold(
        body: SafeArea(child: Container(
          child: Column(
            children: [
// edit profile
       Align(
        alignment: Alignment.topRight,
        child: Icon(Icons.edit,color: whiteColor,).onTap(() { })),


//used detaile section
             10.heightBox,
              Row(
                children: [
                  Image.asset(imgProfile2,width: 60,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                    child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "radhika".text.fontFamily(semibold).white.make(),
                       "abc4512@gmail.com".text.fontFamily(semibold).white.make(),
                    ],
                  )),
                    logout.text.white.fontFamily(semibold).make().box.roundedSM.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 7,vertical: 3)).border(color: whiteColor,width: 1).make()
                ],
              ),
              30.heightBox,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detaileCard(counts: "00",title: "In you Cart",Width: context.screenWidth/3.5,height: context.screenHeight / 15),
                 detaileCard(counts: "05",title: "In you wishlist",Width: context.screenWidth/3.5,height: context.screenHeight / 15),
                  detaileCard(counts: "10",title: "In you orders",Width: context.screenWidth/3.5,height: context.screenHeight / 15)
              ],
             ),
             // button serction
             30.heightBox,
             ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider(color: lightGrey,);
              },
              itemCount: profilevbuttonTitlelist.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  leading: Image.asset(profilevbuttonIconlist[index],width: 16,),
                title: profilevbuttonTitlelist[index].text.make(),
                );
              },
             ).box.white.rounded.padding(EdgeInsets.symmetric(horizontal: 16)).make()
            ],
          ),
        )),
      )
    );
  }
}