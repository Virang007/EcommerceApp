import 'package:britannia/Screens/constant/consts.dart';

Widget detaileCard({Width,height,String? counts,String? title}) {
  return Column(
    children: [
      counts!.text.color(darkFontGrey).fontFamily(bold).make(),
      4.heightBox,
      title!.text.color(darkFontGrey).make()
    ],
  )
      .box
      .roundedSM
      .white
      .height(height)
      .width(Width)
      .padding(EdgeInsets.all(4))
      .make();
}
