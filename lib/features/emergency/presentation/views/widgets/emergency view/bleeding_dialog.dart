import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical%20tips%20details%20view/medical_tips_details_view_body.dart';

class BleedingDialog extends StatelessWidget {
  const BleedingDialog({super.key});

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
                    'Small cuts, scrapes, nosebleeds (not heavy), shaving nicks, or pinprick wounds.',
              ),
              TitledParagraphWidget(
                title: 'Steps:',
                subtitle:
                    "1.Wash your hands / wear gloves.\n2.Rinse the wound with clean water.\n3.Apply pressure with a clean cloth or gauze.\n4.Cover with a bandage or tape.\n5.Elevate the area above the heart.",
              ),
              Image.asset('assets/images/bleeding_image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
