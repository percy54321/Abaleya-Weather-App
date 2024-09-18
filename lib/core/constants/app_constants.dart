
import 'package:flutter/material.dart';

import 'app_colors.dart';


class AppConstants {
  // Padding constants
  static const double paddingSize = 25;
  static const double contentPaddingSize = 10;
  static const double contentSmallPaddingSize = 6;
  // Radius constants
  static const double radiusSize = 8;
  static const double radiusSmall = 10;
  static const double iconImageSize = 50;
  static const double topSpacingSize = 50;
  static const size10 = SizedBox(
    height: 10,
  );
  static const size8 = SizedBox(
    height: 8,
  );
  // Buttons
  static const double buttonHeight = 40;
  // BorderWidth
  static const double borderWidth = 0.7;
  // Padding EdgeInsets
  static const EdgeInsets screenPadding =
      EdgeInsets.all(paddingSize); // Padding for the entire screen
  static const EdgeInsets contentSmallPadding =
      EdgeInsets.all(contentSmallPaddingSize);
  static const EdgeInsets contentPadding =
      EdgeInsets.all(contentPaddingSize); // Padding for content sections
  static const EdgeInsets lR = EdgeInsets.only(
      left: paddingSize, right: paddingSize); // Padding for left and right
  static const EdgeInsets lRT = EdgeInsets.only(
      left: paddingSize,
      right: paddingSize,
      top: 0); // Padding for left, right, and top
  static const topSpacing = SizedBox(
    height: topSpacingSize,
  );
  
  // Border radius
  static final BorderRadius radius =
      BorderRadius.circular(radiusSize); // Border radius for larger elements
  
  // Shape for dialogs, buttons, cards, etc.
  static final RoundedRectangleBorder shape = RoundedRectangleBorder(
    borderRadius: radius, // Apply radius to the shape
  );

  // Create a method that returns the BoxDecoration and accepts a BuildContext
  static BoxDecoration decoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: radius,
      color:Theme.of(context).cardColor
    );
  }

  // Shadow constants
  static final boxShadow = [
    const BoxShadow(
      color: Colors.transparent,
      blurRadius: 0,
      spreadRadius: 0,
      offset: Offset(0, 0),
    ),
  ];
  static const xSize = SizedBox(
    height: 10,
  );
  static const xHSize = SizedBox(
    width: 10,
  );
  static const vHSize = SizedBox(
    width: 6,
  );
  static const vSize = SizedBox(
    height: 5,
  );

  // Border constants
  static final Border border = Border.all(
      width: borderWidth, color: AppColors.borderColor); // Light border
  static const borderSide =
      BorderSide(color: AppColors.borderColor, width: borderWidth);
  static const borderSideRed =
      BorderSide(color: Colors.red, width: borderWidth);
  
  // Margin constants
  static const EdgeInsets margin =
      EdgeInsets.all(paddingSize); // Margin for elements
  static const EdgeInsets marginVertical =
      EdgeInsets.symmetric(vertical: paddingSize); // Vertical margin
  static const EdgeInsets marginHorizontal =
      EdgeInsets.symmetric(horizontal: paddingSize); // Horizontal margin
}
