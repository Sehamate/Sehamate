import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';
import 'package:sehamate/core/widgets/decorated_upper_box.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedUpperBox(),
        SizedBox(height: 30),
        Text(
          "Set a New Password",
          style: context.texts.titleMedium!.copyWith(color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          "Create a New Password",
          style: TextStyle(color: Colors.black87),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: context.texts.titleSmall!.copyWith(color: Colors.black),
              ),
              SizedBox(height: 10),
              CustomTextField(
                hint: "Enter your new password",
              ),
              SizedBox(height: 16),
              Text(
                "Confirm Password",
                style: context.texts.titleSmall!.copyWith(color: Colors.black),
              ),
              SizedBox(height: 10),
              CustomTextField(
                hint: "Enter your new password",
              ),
              SizedBox(height: 16),
              CustomButton(
                text: "Submit",
                onPressed: () {
                  context.router.pop();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
