import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class FirstAidItem extends StatelessWidget {
  final String icon;
  final String title;
  final Function() onTap;
  const FirstAidItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.secondary),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          spacing: 16,
          children: [
            Image.asset(
              icon,
              color: context.colors.secondary,
              height: 25,
            ),
            Text(
              title,
              style: context.texts.titleSmall!.copyWith(color: context.colors.secondary),
            )
          ],
        ),
      ),
    );
  }
}
