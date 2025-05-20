import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class SettingsItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final Function() onTap;
  const SettingsItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        // margin: EdgeInsets.only(bottom: 16),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          spacing: 24,
          children: [
            Icon(icon, color: context.colors.primary, size: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    title,
                    style: context.texts.titleSmall!.copyWith(color: Colors.black),
                  ),
                  if (subtitle != null)
                    Expanded(
                      child: Text(
                        subtitle!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.texts.bodyMedium!.copyWith(color: Colors.grey),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
