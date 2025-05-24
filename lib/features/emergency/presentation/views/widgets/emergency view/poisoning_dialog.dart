import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical%20tips%20details%20view/medical_tips_details_view_body.dart';

class PoisoningDialog extends StatelessWidget {
  const PoisoningDialog({super.key});

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
                "Poisoning",
                style: context.texts.titleMedium!.copyWith(color: Colors.black),
              ),
              TitledParagraphWidget(
                title: 'When to use:',
                subtitle:
                    'After ingesting, inhaling, or coming into contact with a toxic substance (chemicals, medications, spoiled food, or snakebite), or showing symptoms like vomiting, confusion, difficulty breathing, or burns around the mouth.',
              ),
              TitledParagraphWidget(
                title: 'Steps:',
                subtitle:
                    "1.Call poison control or emergency services immediately.\n2.Check if the person is conscious and breathing.\n3.Do not induce vomiting unless instructed by professionals.\n4.If inhaled: move the person to fresh air.\n5.If on skin or eyes: rinse the area with clean water for at least 15 minutes.\n6.If ingested: don’t give food, drink, or medication unless advised.",
              ),
              TitledParagraphWidget(
                title: 'For snake bites:',
                subtitle:
                    "Keep the limb still and below heart level. Remove jewelry or tight clothing near the bite. Do not suck the venom or apply ice. Try to remember the snake’s appearance.",
              ),
              Image.asset('assets/images/poisoning_image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
