import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

import 'doctor_profile_item.dart';

class DoctorProfileViewBody extends StatelessWidget {
  const DoctorProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            foregroundImage: NetworkImage(
              'https://tse4.mm.bing.net/th?id=OIF.kJUP%2bXyHd1Dn174TF6Afxg&pid=Api&P=0&h=220',
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Gamal Mosbah",
            style: context.texts.titleSmall!.copyWith(color: Colors.black),
          ),
          Text(
            "Specialist of OB & Gyne\n5th Street, Nile City",
            style: context.texts.bodyMedium!.copyWith(color: Colors.black),
          ),
          SizedBox(height: 20),
          DoctorProfileItem(
            title: "Biography",
            subtitle:
                "This is the doctor’s biography, including general facts about them, set by the users themselves. This is the doctor’s biography, including general facts about them, set by the user themselves. This is the doctor’s biography, including general fact about them ...",
          ),
          SizedBox(height: 10),
          DoctorProfileItem(
            title: "Experience",
            subtitle:
                "This is the doctor’s biography, including general facts about them, set by the users themselves. This is the doctor’s biography, including general facts about them, set by the user themselves. This is the doctor’s biography, including general fact about them ...",
          ),
        ],
      ),
    );
  }
}
