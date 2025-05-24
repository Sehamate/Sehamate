import 'package:flutter/material.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical%20tips%20details%20view/medical_tips_details_view_body.dart';

class CprViewBody extends StatelessWidget {
  const CprViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          TitledParagraphWidget(
            title: 'When to use:',
            subtitle:
                "Start CPR if someone collapses, isn’t breathing, has no pulse, or is unresponsive after events like choking, drowning, electric shock, trauma, or overdose.",
          ),
          TitledParagraphWidget(
            title: 'Steps:',
            subtitle:
                "1.Call for help.\n2.Start Chest Compressions: 30 compressions, 2 inches deep, at 100–120/min.\n3.Give 2 Rescue Breaths: Tilt head back, pinch nose, seal lips.\n4.",
          ),
        ],
      ),
    );
  }
}
