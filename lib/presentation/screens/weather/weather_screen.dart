import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/controllers/weather_controller.dart';
import '../../../core/widgets/drawer.dart';
import 'responsive/weather_desktop.dart';
import 'responsive/weather_mobile.dart';
import 'responsive/weather_tablet.dart';

class WeatherApp extends GetView<WeatherController> {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).cardColor,
            title: Text(
              'Weather App',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            centerTitle: false,

            // Conditionally display the leading icon (drawer) for mobile only
            leading: isMobile
                ? Builder(
                    builder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    },
                  )
                : null, // Remove the drawer icon for tablet and desktop
          ),
          body: isMobile
              ? const MobileWeatherView() // Mobile view
              : constraints.maxWidth >= 600 && constraints.maxWidth < 1200
                  ? const TabletWeatherView() // Tablet view
                  : const DesktopWeatherView(), // Desktop view

          // Conditionally include the drawer for mobile only
          drawer: isMobile ? const WeatherDrawer() : null,
        );
      },
    );
  }
}
