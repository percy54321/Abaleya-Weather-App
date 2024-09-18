import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/presentation/screens/weather/widgets/error_display.dart';
import 'package:weather_app/presentation/screens/weather/widgets/no_weather_display.dart';
import '../../../../core/controllers/weather_controller.dart';
import '../widgets/search_field.dart';
import '../widgets/weather_display.dart';

class TabletWeatherView extends GetView<WeatherController> {
  const TabletWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.screenPadding,
      child: Row(
        children: [
          // Sidebar for tablet view (optional, could hold additional options)
          Expanded(
            flex: 1,
            child: Container(
              decoration: AppConstants.decoration(context),
              child: const Center(child: Text('Sidebar Placeholder')),
            ),
          ),
          AppConstants.xHSize,
          // Main content
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SearchField(),
                const SizedBox(height: 20),
                Expanded(
                  child: Obx(() {
                    if (Get.find<WeatherController>().isLoading.value) {
                      return Center(
                          child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ));
                    } else if (controller.errorMessage.isNotEmpty) {
                      return const ErrorDisplay();
                    } else if (controller.weather.value != null) {
                      final weather =
                          Get.find<WeatherController>().weather.value!;
                      return WeatherDisplay(weather: weather);
                    } else {
                      return const NoWeatherDisplay();
                    }
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
