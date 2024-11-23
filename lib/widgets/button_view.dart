import 'package:flutter/material.dart';
import '../configuration/app_colors.dart';
import '../configuration/app_style.dart';

class AnimatedButtonView extends StatefulWidget {
  final Function()? onTap;
  final String? title;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? titleColor;
  final Color? borderColor;
  final double? titleFontSize;
  final double? horizontalPadding;
  final double? verticalPadding;

  const AnimatedButtonView({
    super.key,
    this.onTap,
    this.title,
    this.height,
    this.width,
    this.backgroundColor,
    this.borderRadius,
    this.titleColor,
    this.borderColor,
    this.titleFontSize,
    this.horizontalPadding,
    this.verticalPadding,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedButtonViewState createState() => _AnimatedButtonViewState();
}

class _AnimatedButtonViewState extends State<AnimatedButtonView> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widget.horizontalPadding ?? 16,
        vertical: widget.verticalPadding ?? 8,
      ),
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isTapped = true;
          });
          // You can add any additional functionality here when the button is tapped down.
        },
        onTapUp: (_) {
          setState(() {
            _isTapped = false;
          });
          // Call the onTap function when the tap is released
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
        onTapCancel: () {
          setState(() {
            _isTapped = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: widget.height ?? 50,
          width: widget.width ?? double.infinity,
          decoration: BoxDecoration(
            color: _isTapped
                ? (widget.backgroundColor ?? AppColors.primaryColor)
                    .withOpacity(0.2) // Change opacity when tapped
                : (widget.backgroundColor ?? AppColors.primaryColor),
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
            border: Border.all(
              color: widget.borderColor ?? AppColors.transparentColor,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            "${widget.title}",
            style: AppTextStyle.regularTextStyle.copyWith(
              color: widget.titleColor ?? AppColors.whiteColor,
              fontSize: widget.titleFontSize ?? 17,
            ),
          ),
        ),
      ),
    );
  }
}
