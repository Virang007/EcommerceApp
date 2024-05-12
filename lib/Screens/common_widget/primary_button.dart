import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/Screens/constant/text_str.dart';


Widget outButton({onPress,color,textColor,String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12)
    ),
    onPressed: onPress, 
    child:title!.text.color(textColor).fontFamily(bold).make());
}
