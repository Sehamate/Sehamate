import 'package:flutter/material.dart';

import 'widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  final int userType;
  const OnboardingView({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingViewBody(userType: userType),
    );
  }
}
