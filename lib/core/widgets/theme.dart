import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';
import '../controllers/theme_controller.dart';

class AppTheme {
  static final TextStyle _googleFontsInstance = GoogleFonts.sora();
  static final themeController = Get.find<ThemeController>();

  static ThemeData light = ThemeData(
    cardColor: Colors.white,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.sbl,
    // textstyles
    textTheme: TextTheme(
      titleLarge: _googleFontsInstance.copyWith(
        color: AppColors.black,
      ),
      titleMedium: _googleFontsInstance,
      titleSmall: _googleFontsInstance.copyWith(color: AppColors.black),
      bodySmall: _googleFontsInstance.copyWith(color: AppColors.black),
      bodyMedium: _googleFontsInstance.copyWith(color: AppColors.black),
      headlineSmall: _googleFontsInstance.copyWith(
          color: AppColors.black, fontWeight: FontWeight.bold),
      bodyLarge: _googleFontsInstance.copyWith(color: AppColors.black),
      displaySmall: _googleFontsInstance.copyWith(color: AppColors.black),
      displayMedium: _googleFontsInstance.copyWith(color: AppColors.black),
      headlineMedium: _googleFontsInstance.copyWith(
          color: AppColors.black, fontWeight: FontWeight.bold),
    ),
    navigationBarTheme: NavigationBarThemeData(
        labelTextStyle: WidgetStateProperty.all(
      _googleFontsInstance.copyWith(color: AppColors.black),
    )),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _googleFontsInstance.copyWith(color: AppColors.black),
    ),
    appBarTheme: AppBarTheme(
        color: AppColors.sbl,
        centerTitle: true,
        titleTextStyle: _googleFontsInstance.copyWith(
            color: AppColors.black, fontSize: 18)),
    iconTheme: const IconThemeData(color: Colors.black, size: 18),
    dialogTheme: DialogTheme(
      backgroundColor: Colors.white,
      titleTextStyle: _googleFontsInstance.copyWith(color: AppColors.black),
      contentTextStyle: _googleFontsInstance.copyWith(color: AppColors.black),
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
  );

  static ThemeData dark = ThemeData(
    cardColor: const Color(0xff171717),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.black,
    // textstyles
    textTheme: TextTheme(
      titleLarge: _googleFontsInstance.copyWith(color: AppColors.white),
      titleMedium: _googleFontsInstance.copyWith(color: AppColors.white),
      titleSmall: _googleFontsInstance.copyWith(color: AppColors.white),
      bodySmall: _googleFontsInstance.copyWith(color: AppColors.white),
      bodyMedium: _googleFontsInstance.copyWith(color: AppColors.white),
      bodyLarge: _googleFontsInstance.copyWith(color: AppColors.white),
      displaySmall: _googleFontsInstance.copyWith(color: AppColors.white),
      displayMedium: _googleFontsInstance.copyWith(color: AppColors.white),
      headlineSmall: _googleFontsInstance.copyWith(
          color: AppColors.white, fontWeight: FontWeight.bold),
      headlineMedium: _googleFontsInstance.copyWith(
          color: AppColors.white, fontWeight: FontWeight.bold),
    ),
    navigationBarTheme: NavigationBarThemeData(
        labelTextStyle: WidgetStateProperty.all(
      _googleFontsInstance.copyWith(color: AppColors.white),
    )),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _googleFontsInstance.copyWith(color: AppColors.white),
    ),
    appBarTheme: AppBarTheme(
        color: AppColors.black,
        iconTheme: const IconThemeData(color: Colors.white, size: 20),
        centerTitle: true,
        titleTextStyle: _googleFontsInstance.copyWith(
            color: AppColors.white, fontSize: 18)),
    iconTheme: const IconThemeData(color: Colors.white, size: 18),
    navigationRailTheme: const NavigationRailThemeData(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: AppColors.white),
    dialogTheme: DialogTheme(
      backgroundColor: const Color(0xff171717),
      titleTextStyle: _googleFontsInstance.copyWith(color: AppColors.white),
      contentTextStyle: _googleFontsInstance.copyWith(color: AppColors.white),
    ),
  );
}