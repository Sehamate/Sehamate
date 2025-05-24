import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

import 'reminder_dialog.dart';
import 'trackers_dialog.dart';

class PatientHomeBottomSheet extends StatelessWidget {
  const PatientHomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Add New",
            style: context.texts.titleMedium!.copyWith(color: Colors.black),
          ),
          SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              context.router.pop();
              showDialog(
                context: context,
                builder: (context) => ReminderDialog(),
              );
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.notifications, color: context.colors.primary),
                  Text(
                    "Reminder",
                    style: context.texts.titleSmall!.copyWith(color: context.colors.primary),
                  ),
                ],
              ),
            ),
          ),
          Divider(color: context.colors.primary),
          GestureDetector(
            onTap: () {
              context.router.pop();
              showDialog(
                context: context,
                builder: (context) => TrackersDialog(),
              );
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.note, color: context.colors.primary),
                  Text(
                    "Trackers",
                    style: context.texts.titleSmall!.copyWith(color: context.colors.primary),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
