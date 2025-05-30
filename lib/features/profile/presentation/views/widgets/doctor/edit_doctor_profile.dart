import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';

class EditDoctorProfileWidget extends StatelessWidget {
  const EditDoctorProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        height: context.height / 1.5,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: context.colors.primary.withValues(alpha: 0.5),
              width: 30,
            ),
            bottom: BorderSide(
              color: context.colors.primary.withValues(alpha: 0.5),
              width: 30,
            ),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First Name", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  Text("Last Name", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  Text("Job Title", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  Text("Email", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  Text("Medical Specialty", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  Text("Location", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  Text("Biography", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  Text("Experience", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(
                    hint: "hint",
                  ),
                  SizedBox(height: 16),
                  CustomButton(
                    border: Border.all(color: context.colors.primary),
                    foregroundColor: context.colors.primary,
                    backgroundColor: Colors.transparent,
                    text: "Done",
                    onPressed: () {
                      context.router.pop();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
