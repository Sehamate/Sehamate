import 'package:flutter/material.dart';

import 'widgets/about patient/about_patient_view_body.dart';

class AboutPatientView extends StatelessWidget {
  final int userType;
  const AboutPatientView({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AboutPatientViewBody(userType: userType),
    );
  }
}
