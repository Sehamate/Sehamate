import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class ReminderItem extends StatelessWidget {
  const ReminderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: EdgeInsets.only(bottom: 16),
      width: double.maxFinite,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        spacing: 24,
        children: [
          Icon(Icons.notifications, color: context.colors.primary, size: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text(
                  "Take Amoxicillin",
                  style: context.texts.titleSmall!.copyWith(color: Colors.black),
                ),
                Expanded(
                  child: Text(
                    "Second dose, 500mg every 8hrs fsjfnjks",
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
    );
  }
}
