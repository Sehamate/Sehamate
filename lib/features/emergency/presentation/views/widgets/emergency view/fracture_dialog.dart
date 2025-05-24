import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical%20tips%20details%20view/medical_tips_details_view_body.dart';

class FractureDialog extends StatelessWidget {
  const FractureDialog({super.key});

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
                "Fracture",
                style: context.texts.titleMedium!.copyWith(color: Colors.black),
              ),
              TitledParagraphWidget(
                title: 'When to use:',
                subtitle:
                    'After a fall, trauma, or twist with visible pain, swelling, or unusual angle.',
              ),
              TitledParagraphWidget(
                title: 'Steps:',
                subtitle:
                    "1.Immobilize the area (don’t move it).\n2.Apply ice to reduce swelling.\n3.Elevate if safe.\n4.Call emergency services if:\n\t• The bone is visible or sticking out.\n\t• There’s a suspected neck or spine injury.",
              ),
              Image.asset('assets/images/fracture_image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
