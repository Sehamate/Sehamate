import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_date_picker.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';
import 'package:sehamate/core/widgets/decorated_upper_box.dart';

class RegisterViewBody extends StatelessWidget {
  final int userType;
  const RegisterViewBody({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedUpperBox(),
        SizedBox(height: 30),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Create Your Account",
                      style: context.texts.titleMedium!.copyWith(
                        color: context.colors.primary,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () => context.router.pop(),
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: context.colors.secondary),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Text("First name", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(hint: "First name", icon: Icons.person),
                  SizedBox(height: 16),
                  Text("Last name", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(hint: "Last name", icon: Icons.person),
                  SizedBox(height: 16),
                  Text("Birthdate", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomDatepicker(onChanged: (date) {}),
                  SizedBox(height: 16),
                  Text("Email", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(hint: "Email", icon: Icons.mail),
                  SizedBox(height: 16),
                  Text("Password", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(hint: "Password", icon: Icons.lock),
                  SizedBox(height: 16),
                  Text("Confirm Password", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 10),
                  CustomTextField(hint: "Confirm Password", icon: Icons.lock),
                  SizedBox(height: 16),
                  CustomButton(
                    text: "Signup",
                    onPressed: () {
                      context.router.push(Routes.moreAboutView, extra: userType);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
