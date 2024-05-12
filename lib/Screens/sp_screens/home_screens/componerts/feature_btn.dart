import 'package:britannia/Screens/constant/consts.dart';

Widget featuredButton({String? title,icon}){
  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill,),
      5.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.width(175).margin(EdgeInsets.symmetric(horizontal: 4)).white.padding(EdgeInsets.all(4)).rounded.outerShadowSm.make();
}