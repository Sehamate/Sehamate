import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class DoctorProfileItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const DoctorProfileItem({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.texts.titleSmall!.copyWith(color: Colors.black),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
