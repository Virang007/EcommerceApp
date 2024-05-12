
import 'package:britannia/utils/theme/custom_themes/appbar_theme.dart';
import 'package:britannia/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:britannia/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:britannia/utils/theme/custom_themes/chip_theme.dart';
import 'package:britannia/utils/theme/custom_themes/elevated_button.dart';
import 'package:britannia/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:britannia/utils/theme/custom_themes/text_field_theme.dart';
import 'package:britannia/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

   static ThemeData   LightTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: ''
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme:TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.LightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.LightAppBorTheme,
    checkboxTheme: TCheckboxTheme.LightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.LightBottonSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.LightElevatedButtonTheme,
    outlinedButtonTheme: ToutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.LightInputDecorationTheme 

 );
   static ThemeData   DarkTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: ''
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme:TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.LightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.darkAppBorTheme,
    checkboxTheme: TCheckboxTheme.DarkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottonSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ToutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme 
   );

}