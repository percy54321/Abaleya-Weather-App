import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/models/weather_model.dart';

class WeatherDisplay extends StatelessWidget {
  final Weather weather; // Weather data passed into the widget

  const WeatherDisplay({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Full width of the screen using Get.width
      width: Get.width,

      // Applying custom decoration defined in AppConstants
      decoration: AppConstants.decoration(context),

      child: Padding(
        // Padding applied based on the screen padding defined in AppConstants
        padding: AppConstants.screenPadding,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the city name using the theme's titleMedium text style
            Text(
              weather.cityName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10), // Spacing between elements

            // Display the temperature with a large font size and bold styling
            Text(
              "${weather.temperature}°C",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
            ),
            const SizedBox(height: 10), // Spacing between elements

            // Display the weather description (e.g., sunny, rainy)
            Text(
              weather.description,
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 10), // Spacing between elements

            // Display the weather icon fetched from the provided URL
            CachedNetworkImage(
              imageUrl: weather.iconUrl,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
