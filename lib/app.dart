import 'package:britannia/Screens/constant/consts.dart';
import 'package:britannia/Screens/constant/text_str.dart';
import 'package:britannia/utils/theme/theme.dart';
import 'package:flutter/material.dart';

import 'Screens/sp_screens/auth_screen/login_screen.dart';
import 'Screens/sp_screens/auth_screen/texthack.dart';
import 'Screens/sp_screens/sp_screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      // themeMode: ThemeMode.system,
      // theme:TAppTheme.LightTheme,
      // darkTheme:TAppTheme.DarkTheme,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.transparent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: darkFontGrey
          ),
          backgroundColor:Colors.transparent),
        fontFamily: regular,
        
      ),
      home: loginScreen()
    );
  }
}