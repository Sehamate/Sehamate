import 'package:flutter/material.dart';

class MedicalTipsCategoryItem extends StatelessWidget {
  final String title;
  const MedicalTipsCategoryItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
