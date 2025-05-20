import 'package:flutter/material.dart';

class HelpItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const HelpItem({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
