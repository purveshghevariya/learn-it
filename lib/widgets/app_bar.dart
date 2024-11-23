import 'package:flutter/material.dart';
import '../configuration/app_colors.dart';
import '../configuration/app_style.dart';

PreferredSizeWidget appBar(
    {BuildContext? context,
    String? title,
    List<Widget>? action,
    double? elevation,
    Widget? titleWidget,
    bool isTitleWidget = false,
    Widget? leading,
    bool isLeading = false}) {
  return AppBar(
    title: isTitleWidget
        ? titleWidget
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title!,
              style: AppTextStyle.mediumTextStyle
                  .copyWith(color: AppColors.whiteColor),
            ),
          ),
    leading: isLeading ? leading : null,
    backgroundColor: AppColors.primaryColor,
    elevation: elevation ?? 5,
    actions: action,
  );
}
