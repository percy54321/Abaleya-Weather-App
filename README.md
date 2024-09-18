# Abaleya Weather App

The **Weather App** is a Flutter application that allows users to search for and view real-time weather data for any city. It features responsive design across mobile, tablet, and desktop views, includes a mobile drawer, and uses GetX for state management.

## Table of Contents

- [Features](#features)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Responsive Design](#responsive-design)
- [Drawer (Mobile)](#drawer-mobile)
- [Packages Used](#packages-used)
- [Contributions](#contributions)
- [License](#license)

---

## Features

- **Real-time Weather Data**: Fetches current weather data using an API.
- **Responsive UI**: Automatically adapts to mobile, tablet, and desktop screen sizes.
- **Drawer for Mobile**: A fully functional drawer menu is available in mobile view for easy navigation.
- **Validation**: Input validation to prevent searching for empty values.
- **Error Handling**: Displays user-friendly error messages when something goes wrong.
- **State Management with GetX**: Efficient state management for controlling weather data and UI updates.

---

## Project Structure

```bash
lib/
├── core/
│   ├── constants/
│   │   ├── app_colors.dart        # App color schemes
│   │   ├── app_constants.dart     # App constants like padding and styles
│   ├── controllers/
│   │   ├── theme_controller.dart  # Controls theme (light/dark)
│   │   ├── weather_controller.dart # Manages weather fetching and states
│   ├── utils/
│   │   └── validation.dart        # Validation logic for inputs
│   ├── widgets/
│   │   └── drawer.dart            # Custom drawer widget for mobile view
├── presentation/
│   ├── screens/
│   │   ├── weather/
│   │   │   ├── weather_screen.dart # Main screen for weather search and display
│   │   │   ├── responsive/
│   │   │   │   ├── weather_mobile.dart  # Mobile view
│   │   │   │   ├── weather_tablet.dart  # Tablet view
│   │   │   │   ├── weather_desktop.dart # Desktop view
│   │   │   ├── widgets/
│   │   │   │   ├── error_display.dart   # Widget to display error messages
│   │   │   │   ├── no_weather_display.dart # Widget when no weather is displayed
│   │   │   │   ├── search_field.dart    # Input field with validation and search
├── theme/
│   └── theme.dart                   # Light and dark theme definitions
└── main.dart                        # Main entry point for the app

  ```


### Installation

To get started with this project, follow these steps:

#### Prerequisites

- **Flutter SDK**: Ensure that Flutter SDK is installed on your system. To install Flutter, follow the official guide.
- **API Key**: You'll need an API key to fetch the weather data. Use a weather service like OpenWeatherMap to get a free API key. Replace the placeholder `YOUR_API_KEY` in the code.

#### Steps:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/percy54321/Weather-App.git
    ```

2. **Navigate to the project directory:**

    ```bash
    cd weather_app
    ```

3. **Install dependencies:**

    ```bash
    flutter pub get
    ```

4. **Replace API Key**: Open the `weather_controller.dart` file and replace the placeholder `YOUR_API_KEY` with your actual API key.

5. **Run the app:**

    ```bash
    flutter run
    ```

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

The app supports light and dark themes. The theme can be toggled using the `toggleTheme()` method in the `ThemeController`.

## Storage

The app uses `shared_preferences` to store the app's theme and other settings.

## API Integration

The app uses the `http` package to make API requests to fetch the weather data. The API endpoint is stored in the `WeatherController`.

## Contributing

Contributions are welcome! If you'd like to improve the app or add new features, please follow these steps:

1. **Fork the repository.**

2. **Create a new branch:**

    ```bash
    git checkout -b feature/your-feature-name
    ```

3. **Make your changes and commit them:**

    ```bash
    git commit -m "Your descriptive message"
    ```

4. **Push to your forked repository:**

    ```bash
    git push origin feature/your-feature-name
    ```

5. **Open a pull request**, and your contribution will be reviewed.

## License

This project is licensed under the Percy's License. See the LICENSE file for more details.



