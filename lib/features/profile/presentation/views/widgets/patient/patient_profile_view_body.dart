import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

import 'reminder_item.dart';

class PatientProfileViewBody extends StatelessWidget {
  const PatientProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            foregroundImage: NetworkImage(
              'https://tse4.mm.bing.net/th?id=OIF.kJUP%2bXyHd1Dn174TF6Afxg&pid=Api&P=0&h=220',
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Gamal Mosbah",
            style: context.texts.titleSmall!.copyWith(color: Colors.black),
          ),
          Text(
            "22 Years Old, Male",
            style: context.texts.bodyMedium!.copyWith(color: Colors.black),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            width: double.maxFinite,
            height: 240,
            decoration: BoxDecoration(
              border: Border.all(color: context.colors.primary.withValues(alpha: 0.5)),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reminders",
                      style: context.texts.titleSmall!.copyWith(color: Colors.black),
                    ),
                    Text(
                      "Add Reminder",
                      style: context.texts.titleSmall!.copyWith(color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Expanded(child: ReminderList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReminderList extends StatelessWidget {
  const ReminderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ReminderItem();
    });
  }
}
