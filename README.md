# Weather App

A Flutter application that displays the current weather for a given city.

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine
- An API key from a weather API provider (e.g., OpenWeatherMap)

### Installation

1. Clone the repository
2. Open the project in your preferred IDE
3. Run `flutter pub get` to install the dependencies
4. Add your API key to the `WeatherController` class
5. Run `flutter run` to start the app

## Features

- Displays the current weather for a given city
- Supports multiple screen sizes (mobile, tablet, desktop)
- Uses a `WeatherController` to manage the app's state
- Fetches weather data from a remote API
- Displays error messages if the city is not found or if there's an issue with the API request
- Supports light and dark themes
- Stores the app's theme and other settings using `shared_preferences`

## Architecture

The app follows the Model-View-Controller (MVC) architecture pattern.

### Models

- **WeatherModel**: Represents the weather data
  - `cityName`: The name of the city
  - `temperature`: The current temperature in Celsius
  - `description`: A brief description of the weather
  - `iconUrl`: The URL of the weather icon

### Controllers

- **WeatherController**: Manages the app's state
  - `cityController`: A `TextEditingController` to handle user input
  - `weather`: An `Rxn<Weather>` to store the current weather data
  - `isLoading`: An `RxBool` to indicate whether the app is loading data
  - `errorMessage`: An `RxString` to store error messages
  - `fetchWeather()`: A method to fetch the weather data from the API
  - `toggleTheme()`: A method to toggle the app's theme

### Views

- **WeatherScreen**: The main screen of the app that displays the weather data
- **SearchField**: A widget to handle user input
- **WeatherDisplay**: A widget to display the weather data
- **ErrorDisplay**: A widget to display error messages
- **NoWeatherDisplay**: A widget to display a message when no weather data is available

### Utilities

- **ValidationUtils**: A class to validate user input
- **AppConstants**: A class to store app-wide constants
- **AppColors**: A class to store app-wide colors
- **AppStrings**: A class to store app-wide strings
- **AppImages**: A class to store app-wide images

## Themes

The app supports light and dark themes. The theme can be toggled using the `toggleTheme()` method in the `WeatherController`.

## Storage

The app uses `shared_preferences` to store the app's theme and other settings.

## API Integration

The app uses the `http` package to make API requests to fetch the weather data. The API endpoint is stored in the `WeatherController`.

## Contributing

Contributions are welcome! If you'd like to contribute to the project, please fork the repository and submit a pull request.

## License

The project is licensed under the MIT License.
