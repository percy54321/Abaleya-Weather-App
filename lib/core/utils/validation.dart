class ValidationUtils {
  // Method to check if the city name is empty
  static String? validateCityName(String cityName) {
    if (cityName.isEmpty) {
      return 'City name cannot be empty';
    }
    return null;
  }
}
