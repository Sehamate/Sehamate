import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class CustomStepperWidget extends StatelessWidget {
  final int stepsCount;
  final int activeSteps;
  const CustomStepperWidget({
    super.key,
    required this.stepsCount,
    required this.activeSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: List.generate(stepsCount * 2 - 1, (index) {
          if (index % 2 == 0) {
            return Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: index <= (activeSteps * 2) ? Colors.white : null,
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
              ),
            );
          } else {
            return Expanded(child: Divider(color: Colors.white));
          }
        }),
      ),
    );
  }
}
