import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';
import 'package:sehamate/core/widgets/decorated_upper_box.dart';

class LoginViewBody extends StatelessWidget {
  final int userType;
  const LoginViewBody({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedUpperBox(),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: context.texts.titleMedium!.copyWith(
                  color: context.colors.primary,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () => context.router.push(Routes.registerView, extra: userType),
                    child: Text(
                      "Create one",
                      style: TextStyle(color: context.colors.secondary),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              CustomTextField(
                icon: Icons.mail,
                hint: "Enter your email",
              ),
              SizedBox(height: 16),
              CustomTextField(
                icon: Icons.lock,
                obscure: true,
                hint: "Enter your password",
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    context.router.push(Routes.resetPasswordView);
                  },
                  child: Text("Forgot Password?", style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 16),
              CustomButton(
                height: 45,
                text: "Login",
                onPressed: () {
                  if (userType == 0) context.router.go(Routes.doctorChatView);
                  if (userType == 1) context.router.go(Routes.patientChatView);
                },
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  SizedBox(width: 10),
                  Text("OR", style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 10),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  spacing: 16,
                  children: [
                    Image.asset("assets/icons/google.png", height: 24, width: 24),
                    Text(
                      "Sign in with Google",
                      style: context.texts.titleSmall!.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  spacing: 16,
                  children: [
                    Image.asset("assets/icons/facebook.png", height: 24, width: 24),
                    Text(
                      "Sign in with Facebook",
                      style: context.texts.titleSmall!.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
