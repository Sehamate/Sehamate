import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final bool? obscure;
  final IconData? icon;
  const CustomTextField({
    super.key,
    required this.hint,
    this.obscure = false,
    this.icon,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscure! && !showPassword,
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
