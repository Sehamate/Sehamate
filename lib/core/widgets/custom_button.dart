import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BoxBorder? border;
  final double? width;
  final double? height;
  final bool? shadow;
  final IconData? icon;
  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.shadow,
    this.width = double.maxFinite,
    this.height = 40,
    required this.onPressed,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor ?? context.colors.primary,
          boxShadow: (shadow ?? false)
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ]
              : null,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: context.texts.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: foregroundColor,
              ),
            ),
            if (icon != null)
              Icon(
                icon,
                color: foregroundColor ?? Colors.white,
                size: 30,
              )
          ],
        ),
      ),
    );
  }
}
