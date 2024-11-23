import 'package:flutter/material.dart';
import '../configuration/app_colors.dart';
import '../configuration/app_style.dart';

Widget dropDown(
    {BuildContext? context,
    double? width,
    required Function(String? value)? onChange,
    required List<String> data}) {
  return Container(
    height: 50.0, // Set your desired height
    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(8.0), // Set your desired border radius
      border: Border.all(
        color: AppColors.greyColor, // Set your desired border color
        width: 1.0, // Set your desired border width
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: DropdownButtonFormField(
        onChanged: onChange,
        items: data
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        isExpanded: true,
        style: AppTextStyle.smallTextStyle, // Set your desired text color
        hint: Text(
          'Select',
          style: AppTextStyle.smallTextStyle,
        ),
        icon: const Icon(Icons.arrow_drop_down, color: AppColors.greyColor),
        iconSize: 24.0,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
        ),
      ),
    ),
  );
}
