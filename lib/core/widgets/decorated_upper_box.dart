import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class DecoratedUpperBox extends StatelessWidget {
  const DecoratedUpperBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(56),
          bottomRight: Radius.circular(56),
        ),
        gradient: LinearGradient(
          colors: [
            context.colors.primary,
            context.colors.primary.withValues(alpha: 0.6),
            context.colors.primary.withValues(alpha: 0.1),
          ],
        ),
      ),
    );
  }
}
