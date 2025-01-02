import 'package:flutter/material.dart';

class TColors {
  TColors._();
  // app basic colors
  static const Color primary = Color(0XFF4b68ff);
  static const Color secondary = Color(0XFFFFE24B);
  static const Color accent = Color(0XFFb0c7ff);

  // Gradients colors
  static Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  // Text colors
  static const Color textPrimary = Color(0XFF333333);
  static const Color textSecondary = Color(0XFF6c757d);
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color(0XFFf6f6f6);
  static const Color dark = Color(0XFF272727);
  static const Color primaryBackground = Color(0XFFf3f5ff);

  //background  container colors
  static const Color lightContainer = Color(0XFFf6f6f6);
  // static Color darkContainer = TColors.White.withOpacity(0.1);

  // Button colors
  static const Color buttonPrimary = Color(0XFF4b68ff);
  static const Color buttonSecondary = Color(0XFF6c757d);
  static const Color buttonDisabled = Color(0XFFc4c4d4);

  // Border colors
  static const Color borderPrimary = Color(0XFFd9d9d9);
  static const Color borderSecondary = Color(0XFFe6e6e6);

  //Error and VAlidation Colors
  static const Color error = Color(0XFFd32f2d);
  static const Color success = Color(0XFF388e3c);
  static const Color warning = Color(0XFFf57c00);
  static const Color info = Color(0XFF1976d2);

  // Natural Shade
  static const Color black = Color(0XFF232323);
  static const Color darkerGrey = Color(0XFF4f4f4f);
  static const Color darkGrey = Color(0XFF939393);
  static const Color grey = Color(0XFFe0e0e0);
  static const Color softGrey = Color(0XFFf4f4f4);
  static const Color lightGrey = Color(0XFFf9f9f9);
  static const Color white = Color(0XFFffffff);
}
