import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';

class PatientHomeViewBody extends StatelessWidget {
  const PatientHomeViewBody({super.key});

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
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
