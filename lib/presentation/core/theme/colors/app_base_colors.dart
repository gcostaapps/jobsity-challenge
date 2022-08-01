import 'package:flutter/material.dart';

class AppBaseColors {
  //Grayscale Colors
  static const Color offBlack = Color(0xFF14142B);
  static const Color ash = Color(0xFF262338);
  static const Color body = Color(0xFF4E4B66);
  static const Color label = Color(0xFF6E7191);
  static const Color placeholder = Color(0xFFA0A3BD);
  static const Color line = Color(0xFFD9DBE9);
  static const Color input = Color(0xFFEFF0F6);
  static const Color background = Color(0xFFF7F7FC);
  static const Color offWhite = Color(0xFFFCFCFC);

  static MaterialColor errorColor = const MaterialColor(0xFFED2E3E, {
    50: Color(0xFFFFF3F8),
    100: Color(0xFFFBE9E9),
    200: Color(0xFFFF9999),
    300: Color(0xFFFF0000),
    400: Color(0xFFB8004E),
  });

  static MaterialColor successColor = const MaterialColor(0xFF00BA88, {
    50: Color(0xFFF2FFFB),
    100: Color(0xFFE7FCF6),
    200: Color(0xFF34EAB9),
    300: Color(0xFF00BA88),
    400: Color(0xFF00805D),
  });

  static MaterialColor warningColor = const MaterialColor(0xFFF4B740, {
    50: Color(0xFFFFF9EF),
    100: Color(0xFFFFF6E4),
    200: Color(0xFFFFDB94),
    300: Color(0xFFF4B740),
    400: Color(0xFF946200),
  });

  static const MaterialColor lightTextColors = MaterialColor(
    0xFFFCFCFC,
    {
      50: Color(0xFF14142B),
      100: Color(0xFF262338),
      200: Color(0xFF4E4B66),
      300: Color(0xFF6E7191),
      400: Color(0xFFA0A3BD),
      500: Color(0xFFD9DBE9),
      600: Color(0xFFEFF0F6),
      700: Color(0xFFF7F7FC),
      800: Color(0xFFFCFCFC),
    },
  );

  static const MaterialColor darkTextColors = MaterialColor(
    0xFF14142B,
    {
      800: Color(0xFF14142B),
      700: Color(0xFF262338),
      600: Color(0xFF4E4B66),
      500: Color(0xFF6E7191),
      400: Color(0xFFA0A3BD),
      300: Color(0xFFD9DBE9),
      200: Color(0xFFEFF0F6),
      100: Color(0xFFF7F7FC),
      50: Color(0xFFFCFCFC),
    },
  );

  static const MaterialColor lightSurfaceColors = MaterialColor(
    0xFFFCFCFC,
    {
      50: Color(0xFFFCFCFC),
      100: Color(0xFFF7F7FC),
      200: Color(0xFFEFF0F6),
    },
  );

  static const MaterialColor darkSurfaceColors = MaterialColor(
    0x7F2F3565,
    {
      50: Color(0xFF39394C),
      100: Color(0xFF202035),
      200: Color(0xFF202035),
      300: Color(0x7F2F3565),
    },
  );

  static const MaterialColor chili = MaterialColor(
    0xFFFF0000,
    chiliSwatch,
  );

  static const Map<int, Color> chiliSwatch = {
    50: Color(0xFFFFF5F5),
    100: Color(0xFFFFDBDB),
    200: Color(0xFFFF9999),
    300: Color(0xFFFF6666),
    400: Color(0xFFFF4C4D),
    500: Color(0xFFFF0000),
    600: Color(0xFFE50000),
    700: Color(0xFFCC0000),
    800: Color(0xFF990000),
    900: Color(0xFF660000),
  };

  static const MaterialColor blue = MaterialColor(
    0xFF0576F0,
    blueSwatch,
  );

  static const Map<int, Color> blueSwatch = {
    50: Color(0xFFF5F7FF),
    100: Color(0xFFE3FEFF),
    200: Color(0xFF2AA8F8),
    300: Color(0xFF50C8FC),
    400: Color(0xFF2AA8F8),
    500: Color(0xFF0576F0),
    600: Color(0xFF005BD4),
    700: Color(0xFF0041AC),
    800: Color(0xFF002463),
    900: Color(0xFF002463),
  };
}
