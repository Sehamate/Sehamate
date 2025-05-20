import 'package:flutter/material.dart';

class MedicalTipsItem extends StatelessWidget {
  const MedicalTipsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/medical_tips_test.png',
              height: 160,
            ),
          ),
          Expanded(
            child: Text(
              "Low on Energy ? Common Nutrient Gaps That Could Be the Cause",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
