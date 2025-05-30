import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController? controller;
  final bool? obscure;
  final bool? autoFocus;
  final IconData? icon;
  final int? maxLines;
  const CustomTextField({
    super.key,
    required this.hint,
    this.obscure = false,
    this.icon,
    this.controller,
    this.maxLines = 1,
    this.autoFocus = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscure! && !showPassword,
      maxLines: widget.maxLines,
      autofocus: widget.autoFocus!,
      style: TextStyle(color: context.colors.primary),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: context.colors.primary.withValues(alpha: 0.5)),
        prefixIcon: widget.icon != null
            ? Icon(widget.icon, color: context.colors.primary.withValues(alpha: 0.5))
            : null,
        suffixIcon: widget.obscure!
            ? GestureDetector(
                onTap: () {
                  showPassword = !showPassword;
                  setState(() {});
                },
                child: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                  color: context.colors.primary.withValues(alpha: 0.5),
                ),
              )
            : null,
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: context.colors.primary.withValues(alpha: 0.5)),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
