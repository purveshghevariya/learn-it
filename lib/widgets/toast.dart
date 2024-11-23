
import 'package:fluttertoast/fluttertoast.dart';
import '../configuration/app_colors.dart';

void showToast({required String message}) {
  
  Fluttertoast.showToast(
      msg: message,
      textColor:  AppColors.whiteColor,
      backgroundColor: AppColors.blackColor);
}
