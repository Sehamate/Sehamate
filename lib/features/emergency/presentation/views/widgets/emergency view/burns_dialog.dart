import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical%20tips%20details%20view/medical_tips_details_view_body.dart';

class BurnsDialog extends StatelessWidget {
  const BurnsDialog({super.key});

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
                "Bleeding",
                style: context.texts.titleMedium!.copyWith(color: Colors.black),
              ),
              TitledParagraphWidget(
                title: 'When to use:',
                subtitle:
                    "Contact with hot objects, liquids, mild sunburns, or small sparks; treat if under 3 inches and not deep.",
              ),
              TitledParagraphWidget(
                title: 'Steps:',
                subtitle:
                    "1.Cool the burn with running water (15–20 minutes) or a wet cloth.\n2.Remove jewelry or tight clothing from the area.\n3.Take pain relievers (acetaminophen or ibuprofen).\n4.Avoid using ice, butter, oils, or popping blisters.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
