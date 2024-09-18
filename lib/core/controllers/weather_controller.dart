import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/weather_model.dart';
import '../utils/validation.dart';


class WeatherController extends GetxController {
  // Observable weather data (nullable)
  var weather = Rxn<Weather>();

  // Observable to manage loading state
  var isLoading = false.obs;

  // Observable for holding error messages
  var errorMessage = ''.obs;

  // API key for Weather API
  final String apiKey = '';

  // Base URL for the Weather API
  final String baseUrl = 'https://api.weatherapi.com/v1';

  // City input controller
  final cityController = TextEditingController();

  // Function to fetch weather data
  Future<void> fetchWeather() async {
    // Validate the city name using the ValidationUtils class
    String? validationResult = ValidationUtils.validateCityName(cityController.text);

    if (validationResult != null) {
      // If validation fails, set the error message and return
      errorMessage.value = validationResult;
      return;
    }

    // Define the endpoint with city name and API key
    final String endpoint = '$baseUrl/current.json?key=$apiKey&q=${cityController.text}&aqi=no';

    try {
      // Set loading state to true and clear any previous error messages
      isLoading.value = true;
      errorMessage.value = '';

      // Perform the API request
      var response = await http.get(Uri.parse(endpoint));

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        // Update the weather observable with the response data
        weather.value = Weather.fromJson(data);
      } else {
        // Handle error if the city is not found
        errorMessage.value = 'City not found';
      }
    } catch (e) {
      // Handle any errors that occur during the request
      errorMessage.value = 'Failed to load weather';
    } finally {
      // Reset the loading state after the request is complete
      isLoading.value = false;
    }
  }

  // Clean up the city controller when the controller is disposed
  @override
  void onClose() {
    cityController.dispose();
    super.onClose();
  }
}
