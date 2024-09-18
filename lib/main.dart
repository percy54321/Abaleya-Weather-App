import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/controllers/theme_controller.dart';
import 'package:weather_app/presentation/screens/weather/weather_screen.dart';

import 'core/controllers/weather_controller.dart';
import 'core/widgets/theme.dart';

void main() async {
  // Ensures that the Flutter engine is fully initialized before any other code runs
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize and inject the ThemeController instance for managing light/dark mode
  Get.put(ThemeController());

  // Initialize and inject the WeatherController instance for managing weather data
  Get.put(WeatherController());

  // Run the Flutter app
  runApp(const MyApp());
}

class MyApp extends GetView<ThemeController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        // GetMaterialApp is the main entry point for the app with GetX for routing and state management
        () => GetMaterialApp(
          // Hides the debug banner
          debugShowCheckedModeBanner: false,

          // Define dark theme settings
          darkTheme: AppTheme.dark,

          // Define light theme settings
          theme: AppTheme.light,

          // Defines the default transition when navigating between screens
          defaultTransition: Transition.leftToRight,

          // Dynamically changes between light and dark mode based on the value in the ThemeController
          themeMode:
              controller.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,

          // Set the home screen to the WeatherApp screen
          home: const WeatherApp(),
        ),
      );
}
