import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;
  Rx<Color> primaryColor = const Color(0xFFFF9800).obs; // Default primary color

  @override
  void onInit() {
    super.onInit();
    loadThemeFromPrefs();
    loadPrimaryColorFromPrefs();
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    saveThemeToPrefs();
  }

  void updatePrimaryColor(Color color) {
    primaryColor.value = color;
    savePrimaryColorToPrefs(color);
  }

  void loadThemeFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool('isDarkMode') ?? false;
  }

  void saveThemeToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode.value);
  }

  void loadPrimaryColorFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? colorValue = prefs.getInt('primaryColor');
    if (colorValue != null) {
      primaryColor.value = Color(colorValue);
    }
  }
  void resetPrimaryColor() {
    primaryColor.value = const Color(0xFFFFA500); // Reset to default color
    savePrimaryColorToPrefs(primaryColor.value);
  }
  void savePrimaryColorToPrefs(Color color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('primaryColor', color.value);
  }
}
