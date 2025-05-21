import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';

import 'medical_tips_category_item.dart';
import 'medical_tips_item.dart';

class MedicalTipsViewBody extends StatelessWidget {
  const MedicalTipsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomTextField(
            icon: Icons.search,
            hint: "Search",
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MedicalTipsCategoryItem(title: "All"),
                  MedicalTipsCategoryItem(title: "Nutrition"),
                  MedicalTipsCategoryItem(title: "Mental Health"),
                  MedicalTipsCategoryItem(title: "Medication"),
                  MedicalTipsCategoryItem(title: "Exercise"),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return MedicalTipsItem();
            }),
          ),
        ],
      ),
    );
  }
}
