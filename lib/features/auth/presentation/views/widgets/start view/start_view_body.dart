import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'decorated_container.dart';

class StartViewBody extends StatefulWidget {
  const StartViewBody({super.key});

  @override
  State<StartViewBody> createState() => _StartViewBodyState();
}

class _StartViewBodyState extends State<StartViewBody> {
  bool showLearnMore = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: -50,
            left: -150,
            child: DecoratedContainer(),
          ),
          Positioned(
            top: context.height / 2.55,
            right: -100,
            child: DecoratedContainer(),
          ),
          Positioned(
            bottom: -500,
            top: context.height / 2.3,
            left: -200,
            child: DecoratedContainer(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 30),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset('assets/images/appLogo.png'),
                    ),
                    // SizedBox(height: 16),
                    GradientText(
                      "Your Own AI\nHealth Companion",
                      style: context.texts.titleMedium,
                      textAlign: TextAlign.center,
                      gradientDirection: GradientDirection.ttb,
                      colors: [
                        Colors.grey,
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    SizedBox(height: 60),
                    Image.asset('assets/images/robot.png'),
                    SizedBox(height: 60),
                    Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: CustomButton(
                            onPressed: () => context.router.push(Routes.loginView, extra: 0),
                            text: "For Doctors",
                            shadow: true,
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            onPressed: () => context.router.push(Routes.loginView, extra: 1),
                            text: "For Patient",
                            shadow: true,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    CustomButton(
                      onPressed: () {
                        showLearnMore = !showLearnMore;
                        setState(() {});
                      },
                      icon: showLearnMore
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                      backgroundColor: Colors.white,
                      foregroundColor: context.colors.primary,
                      width: 195,
                      text: "Learn More",
                    ),
                    if (showLearnMore) SizedBox(height: 16),
                    if (showLearnMore)
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LearnMoreWidget(
                            title: "For Doctors",
                            subtitle:
                                "AI Medical Chatbot\nSmart Case Decisions\nAnalyze Tests & Scans\nAuto Medical Reports",
                          ),
                          LearnMoreWidget(
                            title: "For Patients",
                            subtitle:
                                "Personalised Health Support Chatbot\nUpload Medical Images\nFirst Aid & Emergency\nMedicine Reminders",
                          ),
                        ],
                      ),
                    SizedBox(height: 20),
                    Text(
                      "By continuing, you agree to:",
                      style: context.texts.bodySmall!.copyWith(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 20,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.router.push(Routes.termsAndServicesView);
                          },
                          child: Text(
                            "Terms and Conditions",
                            style: context.texts.bodySmall!.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.router.push(Routes.privacyPolicyView);
                          },
                          child: Text(
                            "Privacy Policy",
                            style: context.texts.bodySmall!.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "© 2025 SehaMate. All Rights Reserved.",
                      textAlign: TextAlign.center,
                      style: context.texts.bodySmall!.copyWith(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LearnMoreWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const LearnMoreWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: (context.width - 42) / 2,
      // height: 300,
      decoration: BoxDecoration(
        color: Color(0xffF8F4FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        spacing: 16,
        children: [
          Text(
            title,
            style: context.texts.titleMedium!.copyWith(
              color: context.colors.secondary,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
