import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_stepper.dart';

class OnboardingViewBody extends StatefulWidget {
  final int userType;
  const OnboardingViewBody({super.key, required this.userType});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int currentIndex = 0;
  List<Map<String, String>> patientData = [
    {
      'image': "assets/images/onboardingP1.png",
      'desc':
          "Chat anytime with our Health Support Chatbot to get instant answers to your questions, from medical advice to therapy‑style support.",
    },
    {
      'image': "assets/images/onboardingP2.png",
      'desc':
          "Snap or upload CT/MRI images (or paper reports) and receive an easy‑to‑understand condition report in seconds.",
    },
    {
      'image': "assets/images/onboardingP3.png",
      'desc':
          "Set up medicine and checkup reminders so you stay on track—no more missed pills or late lab tests!",
    },
    {
      'image': "assets/images/onboardingP4.png",
      'desc':
          "Access step‑by‑step first‑aid tips and one‑tap emergency calling with your current location—help is always within reach.",
    },
    {
      'image': "assets/images/onboardingP5.png",
      'desc':
          "Browse quick, expert‑curated medical tips to manage your health smarter and feel your best every day.",
    },
  ];
  List<Map<String, String>> doctorData = [
    {
      'image': "assets/images/onboardingD1.png",
      'desc':
          "Ask the AI Chatbot for the latest studies and guidelines in your specialty whenever you need them.",
    },
    {
      'image': "assets/images/onboardingD2.png",
      'desc':
          "Receive data‑driven treatment suggestions and auto‑generate patient reports right after diagnosis.",
    },
    {
      'image': "assets/images/onboardingD3.png",
      'desc':
          "Review Medical scans with AI‑powered analysis and enhancement to spot issues faster.",
    },
  ];
  List<Map<String, String>> get data => widget.userType == 0 ? doctorData : patientData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: context.height / 3,
              width: context.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    context.colors.primary.withValues(alpha: 0.5),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "Hi! I Am Your AI Health Companion.",
                  textAlign: TextAlign.center,
                  style: context.texts.titleMedium!.copyWith(
                    color: context.colors.primary,
                  ),
                ),
                SizedBox(height: 52),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        data[currentIndex]['image']!,
                        height: 200,
                      ),
                    ),
                    if (currentIndex < data.length - 1)
                      GestureDetector(
                        onTap: () {
                          currentIndex++;
                          setState(() {});
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: context.colors.primary,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              size: 33,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 59,
                  child: Text(
                    data[currentIndex]['desc']!,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 40),
                CustomStepperWidget(
                  stepsCount: data.length,
                  activeSteps: currentIndex,
                ),
                SizedBox(height: 40),
                CustomButton(
                  text: "Start Your Journey",
                  onPressed: () {
                    if (widget.userType == 0) context.router.go(Routes.doctorHomeView);
                    if (widget.userType == 1) context.router.go(Routes.patientHomeView);
                  },
                ),
                Spacer(flex: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
