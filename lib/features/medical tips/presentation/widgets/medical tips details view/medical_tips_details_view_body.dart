import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class MedicalTipsDetailsViewBody extends StatelessWidget {
  const MedicalTipsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Container(
              width: double.maxFinite,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/medical_tips_test.png"),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.7),
                ),
                child: Center(
                  child: Text(
                    "Low on Energy ? Common Nutrient Gaps That Could Be the Cause",
                    textAlign: TextAlign.center,
                    style: context.texts.titleMedium!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
        ];
      },
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitledParagraphWidget(
                  title: "Common Micronutrient Gaps",
                  subtitle:
                      "Vitamin D: Supports immune and bone health. Low levels are common, especially in areas with little sunlight. Iron: Low iron can leave you feeling tired and weak. Vitamin B12: Important for energy and brain function, especially in vegetarians and older adults. Magnesium: Aids in muscle function, mood, and heart rhythm. Vitamin A: Helps maintain vision and supports your immune system.",
                ),
                TitledParagraphWidget(
                  title: "Common Micronutrient Gaps",
                  subtitle:
                      "Vitamin D: Supports immune and bone health. Low levels are common, especially in areas with little sunlight. Iron: Low iron can leave you feeling tired and weak. Vitamin B12: Important for energy and brain function, especially in vegetarians and older adults. Magnesium: Aids in muscle function, mood, and heart rhythm. Vitamin A: Helps maintain vision and supports your immune system.",
                ),
                TitledParagraphWidget(
                  title: "Common Micronutrient Gaps",
                  subtitle:
                      "Vitamin D: Supports immune and bone health. Low levels are common, especially in areas with little sunlight. Iron: Low iron can leave you feeling tired and weak. Vitamin B12: Important for energy and brain function, especially in vegetarians and older adults. Magnesium: Aids in muscle function, mood, and heart rhythm. Vitamin A: Helps maintain vision and supports your immune system.",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TitledParagraphWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitledParagraphWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.texts.titleSmall!.copyWith(color: Colors.black),
        ),
        Text(subtitle, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
