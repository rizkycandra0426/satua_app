import 'package:flutter/material.dart';
import 'package:satua/app/core/theme_manager/color_manager.dart';
import 'package:satua/app/core/theme_manager/text_style_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    dividerTheme: const DividerThemeData(thickness: 0.3),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Inter',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: ColorManager.primaryYellow,
        foregroundColor: ColorManager.grey,
      ),
    ),
    cardTheme: const CardTheme(
      elevation: 1,
      margin: EdgeInsets.zero,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorManager.grey),
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyleManager.medium12().copyWith(fontSize: 16),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: TextStyleManager.mediumGray(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ColorManager.lightGrey,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ColorManager.lightGrey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ColorManager.lightGrey,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ColorManager.primaryYellow,
        ),
      ),
    ),
  );
}
