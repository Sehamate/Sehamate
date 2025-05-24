import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';

class TrackersDialog extends StatefulWidget {
  const TrackersDialog({super.key});

  @override
  State<TrackersDialog> createState() => _TrackersDialogState();
}

class _TrackersDialogState extends State<TrackersDialog> {
  final TextEditingController chronicConditionsController = TextEditingController();
  final TextEditingController medicationsController = TextEditingController();
  List<String> chronicConditions = [];
  List<String> medications = [];
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Add Trackers",
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
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chronic Conditions",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: chronicConditionsController,
                            hint: 'Add More',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            chronicConditions.add(chronicConditionsController.text);
                            setState(() {});
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: context.colors.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (chronicConditions.isNotEmpty) SizedBox(height: 16),
                    ...List.generate(
                      chronicConditions.length,
                      (index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chronicConditions[index],
                              style: TextStyle(color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                chronicConditions.removeAt(index);
                                setState(() {});
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: context.colors.primary.withValues(alpha: 0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(Icons.remove, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Medications",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: medicationsController,
                            hint: 'Add More',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            medications.add(medicationsController.text);
                            setState(() {});
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: context.colors.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (medications.isNotEmpty) SizedBox(height: 16),
                    ...List.generate(
                      medications.length,
                      (index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              medications[index],
                              style: TextStyle(color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                medications.removeAt(index);
                                setState(() {});
                              },
                              child: Container(
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: context.colors.primary.withValues(alpha: 0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(Icons.remove, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        );
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
      ),
    );
  }
}
