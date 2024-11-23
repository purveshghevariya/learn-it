import 'package:flutter/material.dart';
import '../configuration/app_colors.dart';
import '../configuration/app_style.dart';
import '/utils/validation.dart';

Widget textview({
  BuildContext? context,
  required String? hintText,
  required TextEditingController? controller,
  bool autoFocus = false,
  bool isPrefixIcon = false,
  bool enable = true,
  String? prefixIcon,
  TextInputType? textInputType,
  TextInputAction? textInputAction,
  bool obscureText = false,
  Function(String value)? onCahnge,
  String? validationMessage,
  bool isSuffixIcon = false,
  String? suffixIcon,
  Function()? suffixOntap,
  bool needValidation = false,
  bool isEmailValidator = false,
  bool isPasswordValidator = false,
  bool isPhoneNumberValidator = false,
}) {
  return TextFormField(
    keyboardType: textInputType ?? TextInputType.url,
    textInputAction: textInputAction ?? TextInputAction.none,
    controller: controller,
    onChanged: onCahnge,
    validator: needValidation
        ? (value) => TextFieldValidation.validation(
            value: value ?? "",
            isPasswordValidator: isPasswordValidator,
            message: validationMessage ?? hintText,
            isEmailValidator: isEmailValidator,
            isPhoneNumberValidator: isPhoneNumberValidator)
        : null,
    style: AppTextStyle.regularTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.blackColor),
    cursorColor: AppColors.primaryColor,
    obscureText: obscureText,
    autofocus: autoFocus,
    decoration: InputDecoration(
      enabled: enable,
      suffixIcon: isSuffixIcon
          ? InkWell(
              onTap: suffixOntap,
              child: Image.asset(
                suffixIcon!,
                scale: 24,
                color: AppColors.primaryColor,
              ),
            )
          : null,
      prefixIcon: isPrefixIcon
          ? Image.asset(
              prefixIcon!,
              scale: 24,
              color: AppColors.blackColor,
            )
          : null,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: AppColors.greyColor,
          width: 1,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: AppColors.greyColor,
          width: 1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: AppColors.greyColor,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: AppColors.greyColor,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      contentPadding: const EdgeInsets.fromLTRB(14, 10, 0, 0),
      hintText: hintText,
      hintStyle: AppTextStyle.regularTextStyle
          .copyWith(fontSize: 14, color: AppColors.greyColor),
      labelStyle: AppTextStyle.smallTextStyle.copyWith(
        color: AppColors.greyColor,
      ),
    ),
  );
}
