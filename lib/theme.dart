import 'package:flutter/material.dart';

import 'core/utils/font_styles.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: primaryColor,
        size: 36,
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: Styles.font30.copyWith(fontWeight: FontWeight.bold),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  );
}
