import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';

class AboutPatientViewBody extends StatefulWidget {
  final int userType;
  const AboutPatientViewBody({super.key, required this.userType});
  @override
  State<AboutPatientViewBody> createState() => _AboutPatientViewBodyState();
}

class _AboutPatientViewBodyState extends State<AboutPatientViewBody> {
  final PageController controller = PageController();
  int currentIndex = 0;

  List<QuestionTemplateWidget> patientQuestions = [
    QuestionTemplateWidget(
      title: "Do you have any known drug allergies?",
      controller: TextEditingController(),
    ),
    QuestionTemplateWidget(
      title: "What is your gender?",
      controller: TextEditingController(),
    ),
    QuestionTemplateWidget(
      title: "Do you have any chronic conditions?",
      controller: TextEditingController(),
    ),
    QuestionTemplateWidget(
      title: "Are you taking any medications regularly?",
      controller: TextEditingController(),
    ),
    QuestionTemplateWidget(
      title: "Have you had any previous surgeries?",
      controller: TextEditingController(),
    ),
  ];
  List<QuestionTemplateWidget> doctorQuestions = [
    QuestionTemplateWidget(
      title: "What is Your Medical Speciality?",
      controller: TextEditingController(),
    ),
    QuestionTemplateWidget(
      title: "How many years of experience do you have?",
      controller: TextEditingController(),
    ),
  ];
  List<QuestionTemplateWidget> get questions =>
      widget.userType == 0 ? doctorQuestions : patientQuestions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Tell Me More about You!",
          style: context.texts.titleMedium!.copyWith(
            color: context.colors.primary,
          ),
        ),
        SizedBox(height: 74),
        Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.maxFinite,
            height: 100,
            child: PageView(
              controller: controller,
              children: questions,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            spacing: 16,
            children: [
              if (currentIndex > 0)
                Expanded(
                  child: CustomButton(
                    border: Border.all(color: context.colors.primary, width: 2),
                    backgroundColor: Colors.transparent,
                    foregroundColor: context.colors.primary,
                    text: "Previous",
                    onPressed: () {
                      if (currentIndex > 0) {
                        controller.animateToPage(
                          --currentIndex,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                        setState(() {});
                      }
                    },
                  ),
                ),
              if (currentIndex < questions.length - 1)
                Expanded(
                  child: CustomButton(
                    border: Border.all(color: context.colors.primary, width: 2),
                    backgroundColor: Colors.transparent,
                    foregroundColor: context.colors.primary,
                    text: "Next",
                    onPressed: () {
                      if (currentIndex < questions.length - 1) {
                        controller.animateToPage(
                          ++currentIndex,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                        setState(() {});
                      }
                    },
                  ),
                ),
              if (currentIndex == questions.length - 1)
                Expanded(
                  child: CustomButton(
                    border: Border.all(color: context.colors.primary, width: 2),
                    backgroundColor: Colors.transparent,
                    foregroundColor: context.colors.primary,
                    text: "Finish",
                    onPressed: () {
                      context.router.go(Routes.onboardingView, extra: widget.userType);
                    },
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: double.maxFinite,
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
      ],
    );
  }
}

class QuestionTemplateWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const QuestionTemplateWidget({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: context.texts.titleSmall!.copyWith(
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16),
        CustomTextField(
          hint: "Answer",
        ),
      ],
    );
  }
}
