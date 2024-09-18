import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/controllers/theme_controller.dart';

class AppColors {
  static final ThemeController themeController = Get.find<ThemeController>();

  static Color get primaryColor => themeController.primaryColor.value;

  static const black = Colors.black;
  static const white = Colors.white;
  static const fieldColor = Colors.white;
  static const borderColor = Colors.grey;
  static const sbl = Color(0xfff1f3f4);
  static final lightPrimary = primaryColor.withOpacity(0.1);

  // Quizzes
  static const Color previousButtonColor = Colors.white;
  static const Color nextButtonColor = Colors.green;
  static const Color submitButtonColor = Colors.orange;
}
