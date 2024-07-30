import 'package:flutter/material.dart';
import 'package:satua/app/core/theme_manager/color_manager.dart';

class FontFamilyConstant {
  static String inter = 'Inter';
  static String milkieWylkie = 'MilkieWylkie';
}

class TextStyleManager {
  static TextStyle largeTitle({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.milkieWylkie;
    const double defaultFontSize = 47;

    const Color defaultColor = Colors.white;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: 3,
      textBaseline: textBaseline,
      height: 1,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextStyle titleGreen({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.inter;
    const double defaultFontSize = 22;

    Color defaultColor = ColorManager.primaryGreen;
    const FontWeight defaultFontWeight = FontWeight.w900;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextStyle title({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.inter;
    const double defaultFontSize = 16;
    Color defaultColor = ColorManager.black4;
    const FontWeight defaultFontWeight = FontWeight.w700;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextStyle medium12({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.inter;
    const double defaultFontSize = 12;
    Color defaultColor = ColorManager.black4;
    const FontWeight defaultFontWeight = FontWeight.w500;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextStyle regular12({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.inter;
    const double defaultFontSize = 12;
    Color defaultColor = ColorManager.black4;
    const FontWeight defaultFontWeight = FontWeight.w400;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextStyle mediumGray12({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.inter;
    const double defaultFontSize = 12;
    Color defaultColor = ColorManager.grey;
    const FontWeight defaultFontWeight = FontWeight.w500;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextStyle mediumGray({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.inter;
    const double defaultFontSize = 14;
    Color defaultColor = ColorManager.grey;
    const FontWeight defaultFontWeight = FontWeight.w500;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextStyle button({
    String? fontFamily,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    String defaultFontFamily = FontFamilyConstant.inter;
    const double defaultFontSize = 16;
    Color defaultColor = ColorManager.black4;
    const FontWeight defaultFontWeight = FontWeight.w800;

    return TextStyle(
      fontFamily: fontFamily ?? defaultFontFamily,
      color: color ?? defaultColor,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: fontWeight ?? defaultFontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      decoration: decoration,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}
