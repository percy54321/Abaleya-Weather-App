import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import '../../../../core/controllers/weather_controller.dart';
import '../../../../core/utils/validation.dart';

class SearchField extends GetView<WeatherController> {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConstants.decoration(context),
      child: TextField(
        // Controller to handle the city name input
        controller: controller.cityController,

        // Input decoration to style the search field
        decoration: InputDecoration(
          filled: true, // Background fill for the text field
          fillColor: Theme.of(context)
              .cardColor, // The background color from the theme

          // Placeholder text when no input is entered
          hintText: 'Enter city name',

          // Styled border for the input field with rounded corners
          border: OutlineInputBorder(
            borderRadius: AppConstants
                .radius, // Using predefined radius from AppConstants
            borderSide: BorderSide.none, // No visible border
          ),

          // Search icon on the trailing (right) side of the input field
          suffixIcon: IconButton(
            icon: const Icon(Iconsax.search_normal_1), // Iconsax search icon
            onPressed: () {
              // Validate the city name input using ValidationUtils
              String? validationResult = ValidationUtils.validateCityName(
                  controller.cityController.text);

              // If validation fails, show the error message
              if (validationResult != null) {
                controller.errorMessage.value = validationResult;
              } else {
                // If valid, fetch the weather data
                controller.fetchWeather();
              }
            },
          ),
        ),

        // Center the text inside the input field
        textAlign: TextAlign.center,

        // Use the theme's titleMedium style for the input text
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
