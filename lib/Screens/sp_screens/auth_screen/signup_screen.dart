import 'package:britannia/Screens/constant/consts.dart';
import 'package:intl/intl.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
  bool? isCheck = false;

    return bgwidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogo(),
            10.heightBox,
            "join the $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(hint: namehint, title: name),
                customTextField(hint: emialHint, title: emial),
                customTextField(hint: passwordHint, title: password),
                customTextField(hint: retypepsswordHint, title: retypepssword),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        checkColor: redColor,
                        activeColor: whiteColor,
                        value: isCheck,
                        onChanged: (Value) {
                          setState(() {
                            isCheck = Value!;
                          });
                        }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: agree,
                            style:
                                TextStyle(fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: termandcondiction,
                            style:
                                TextStyle(fontFamily: regular, color: redColor)),
                        TextSpan(
                            text: "&",
                            style:
                                TextStyle(fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(fontFamily: regular, color: redColor))
                      ])),
                    )
                  ],
                ),
                10.heightBox,
                outButton(
                        color:isCheck == true ? redColor :lightGolden,
                        textColor: whiteColor,
                        title: signup,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  alreadyaccount.text.color(fontGrey).make(),
                  login.text.color(redColor).make().onTap(() {
                    Get.back();
                  })
                ],
               )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
