import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';

class DoctorHomeViewBody extends StatelessWidget {
  const DoctorHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            "Welcome, John!",
            style: context.texts.titleMedium!.copyWith(color: context.colors.primary),
          ),
          SizedBox(height: 10),
          Text(
            "Let’s chat about your health today! You can ask me any question.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 40),
          CustomTextField(hint: "Your Question"),
          SizedBox(height: 32),
          CustomButton(
            text: "Start Chat",
            onPressed: () {
              context.router.go(Routes.patientChatView);
            },
          ),
          SizedBox(height: 32),
          Container(
            padding: EdgeInsets.all(16),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              spacing: 16,
              children: [
                Expanded(
                  child: Text(
                    "Unlock your full potential in patient care.ata",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/doctor_home_image.png",
                  height: 100,
                ),
              ],
            ),
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
