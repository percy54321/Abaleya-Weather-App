import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/presentation/screens/weather/widgets/error_display.dart';
import 'package:weather_app/presentation/screens/weather/widgets/no_weather_display.dart';
import '../../../../core/controllers/weather_controller.dart';
import '../widgets/search_field.dart';
import '../widgets/weather_display.dart';

class MobileWeatherView extends GetView<WeatherController> {
  const MobileWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.screenPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SearchField(), // The SearchField widget for city input
          const SizedBox(height: 20),
          Expanded(
            child: Obx(() {
              if (controller.isLoading.value) {
                return Center(
                    child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ));
              } else if (controller
                  .errorMessage
                  .isNotEmpty) {
                return const ErrorDisplay();
              } else if (controller.weather.value != null) {
                final weather = controller.weather.value!;
                return WeatherDisplay(weather: weather);
              } else {
                return const NoWeatherDisplay();
              }
            }),
          ),
        ],
      ),
    );
  }
}
