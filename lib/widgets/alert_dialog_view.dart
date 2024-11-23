import 'package:flutter/material.dart';
import '../configuration/app_colors.dart';
import '../configuration/app_style.dart';
import '/widgets/button_view.dart';
import '/widgets/dialog_view.dart';

void alertDialogView({
  required BuildContext context,
  required String title,
  required String contet,
  required Function() yesPress,
  required Function() noPress,
}) {
  dialogBoxView(context,
      widget: AlertDialog(
        title: Text(
          title,
          style: AppTextStyle.regularTextStyle
              .copyWith(color: AppColors.blackColor),
        ),
        content: Text(
          contet,
          style:
              AppTextStyle.smallTextStyle.copyWith(color: AppColors.blackColor),
        ),
        actions: [
          AnimatedButtonView(
              title: "Yes", onTap: yesPress, width: 60, height: 40),
          AnimatedButtonView(
              title: "No", onTap: noPress, width: 60, height: 40),
        ],
      ));
}
