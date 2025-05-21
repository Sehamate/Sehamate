import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';
import 'package:sehamate/core/widgets/decorated_upper_box.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedUpperBox(),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Forgot Password",
                  style: context.texts.titleMedium!.copyWith(color: Colors.black),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  "Please enter your email to reset password",
                  style: context.texts.bodyMedium!.copyWith(color: Colors.black87),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Email",
                style: context.texts.titleSmall!.copyWith(color: Colors.black),
              ),
              SizedBox(height: 10),
              CustomTextField(
                icon: Icons.email,
                hint: "Enter your email",
              ),
              SizedBox(height: 16),
              CustomButton(
                text: "Reset Password",
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
