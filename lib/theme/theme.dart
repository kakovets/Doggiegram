import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color blueColor = const Color(0xFF4394BF);
Color darkColor = const Color(0xFF1C1C1C);
Color darkerColor = const Color(0xFF141414);

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
  ),
  secondaryHeaderColor: blueColor,
  dividerColor: Colors.grey.shade200,

  textTheme: GoogleFonts.ubuntuTextTheme().copyWith(
    bodyLarge: const TextStyle(color: Colors.black),
    bodyMedium: const TextStyle(color: Colors.black),
    bodySmall: const TextStyle(color: Colors.black),
  ),

  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.white),
    surfaceTintColor: Colors.transparent,
    backgroundColor: blueColor,
  ),

  drawerTheme: const DrawerThemeData(
    shape: Border(),
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.white,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: blueColor,
    foregroundColor: Colors.white
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey.shade100,
    selectedIconTheme: const IconThemeData(
      color: Colors.pink,
    ),
    selectedItemColor: Colors.pink,
    showUnselectedLabels: false,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: darkerColor,
  ),
  secondaryHeaderColor: darkerColor,
  dividerColor: Colors.black,

  textTheme: GoogleFonts.ubuntuTextTheme().copyWith(
    bodyLarge: const TextStyle(color: Colors.white),
    bodyMedium: const TextStyle(color: Colors.white),
    bodySmall: const TextStyle(color: Colors.white),
  ),

  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.white),
    surfaceTintColor: Colors.transparent,
    backgroundColor: darkColor,
  ),

  drawerTheme: DrawerThemeData(
    shape: const Border(),
    surfaceTintColor: Colors.transparent,
    backgroundColor: darkColor,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: blueColor,
      foregroundColor: Colors.white
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey.shade900,
    selectedIconTheme: const IconThemeData(
      color: Colors.pink,
    ),
    selectedItemColor: Colors.pink,
    showUnselectedLabels: false,
  ),
);
