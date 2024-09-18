import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/core/constants/app_constants.dart';

import '../../../../core/controllers/weather_controller.dart'; // Import Iconsax package

class ErrorDisplay extends GetView<WeatherController> {
  const ErrorDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConstants.decoration(context),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon for error display
            const Icon(
              Iconsax.warning_2, // Iconsax error icon
              color: Colors.red,
              size: 100,
            ),
            const SizedBox(height: 20),
            // Display the error message
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Obx(
                () => Text(
                  controller.errorMessage.value,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
