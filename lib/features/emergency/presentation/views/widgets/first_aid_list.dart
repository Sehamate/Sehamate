import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class FirstAidList extends StatelessWidget {
  const FirstAidList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              border: Border.all(color: context.colors.secondary),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              spacing: 16,
              children: [
                Image.asset(
                  'assets/icons/cpr.png',
                  color: context.colors.secondary,
                  height: 25,
                ),
                Text(
                  "CPR & Cardiac Arrest",
                  style: context.texts.titleSmall!.copyWith(color: context.colors.secondary),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
