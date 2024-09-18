import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/app_constants.dart';

class NoWeatherDisplay extends StatelessWidget {
  const NoWeatherDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Applying custom decoration from AppConstants
      decoration: AppConstants.decoration(context),

      // Centering the content within the container
      child: Center(
        child: Column(
          // Minimize the column size and center its contents
          mainAxisSize: MainAxisSize.min,
          children: [
            // Cloud icon to indicate that no weather information is available
            const Icon(
              Iconsax.cloud, // Using the Iconsax cloud icon
              size: 100, // Large size to make the icon prominent
              color: Colors.grey, // Grey color to match the "no data" theme
            ),
            // Adding some vertical spacing
            AppConstants.xSize,
            // Instructional text for the user to enter a city name
            Text(
              'Enter a city to get the weather!',
              style: TextStyle(
                fontSize: 18, // Text size for readability
                fontWeight: FontWeight.w500, // Medium font weight
                color: Colors.grey[700], // Light grey text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
