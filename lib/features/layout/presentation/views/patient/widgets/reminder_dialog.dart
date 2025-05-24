import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_date_picker.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';

class ReminderDialog extends StatelessWidget {
  const ReminderDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: double.maxFinite,
              color: context.colors.primary.withValues(alpha: 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Reminder",
                    style: context.texts.titleSmall,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.pop();
                    },
                    child: Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Reminder Title",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(hint: "Take Second Medicine Dose"),
                  SizedBox(height: 16),
                  Text(
                    "Notes",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(hint: "500mg once every 8hrs"),
                  SizedBox(height: 16),
                  Text(
                    "Date",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  CustomDatepicker(onChanged: (date) {}),
                  SizedBox(height: 16),
                  CustomButton(
                    backgroundColor: Colors.transparent,
                    foregroundColor: context.colors.primary,
                    border: Border.all(color: context.colors.primary),
                    text: "Done",
                    onPressed: () {
                      context.router.pop();
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.maxFinite,
              color: context.colors.primary.withValues(alpha: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
