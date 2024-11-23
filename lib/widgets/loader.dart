import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../configuration/app_colors.dart';

void showLoadingDialog() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.dialog(
        Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      width: 25,
                      height: 25,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        color: AppColors.primaryColor,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.whiteColor),
                      )),
                ],
              ),
            ),
          ),
        ),
        barrierDismissible: false);
  });
}

void hideLoadingDialog({@required BuildContext? context}) {
  FocusScope.of(Get.context!).unfocus();
  Get.back();
}
