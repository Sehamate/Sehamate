import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical%20tips%20details%20view/medical_tips_details_view_body.dart';

class ChockingDialog extends StatelessWidget {
  const ChockingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16),
        clipBehavior: Clip.hardEdge,
        width: double.maxFinite,
        height: context.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
            width: 30,
            color: context.colors.primary,
          )),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              Text(
                "Chocking",
                style: context.texts.titleMedium!.copyWith(color: Colors.black),
              ),
              TitledParagraphWidget(
                title: 'When to use:',
                subtitle:
                    'If someone is coughing forcefully, unable to speak, or clutching their throat.',
              ),
              TitledParagraphWidget(
                title: 'Steps:',
                subtitle:
                    "1.Perform the Heimlich maneuver:\n\t.• Stand behind, place a fist above their navel, thrust upward quickly.\n\t• Repeat until object is expelled.",
              ),
              Image.asset('assets/images/chocking_image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
