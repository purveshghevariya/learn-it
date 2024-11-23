
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  static TextStyle mediumTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: "poppins-bold",
    color: AppColors.blackColor,
    letterSpacing: 0,
  );

  static TextStyle regularTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
    fontFamily: "poppins",
    letterSpacing: 0,
  );

  static TextStyle smallTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColors.blackColor,
    letterSpacing: 0,
    fontFamily: "poppins",
  );
}
