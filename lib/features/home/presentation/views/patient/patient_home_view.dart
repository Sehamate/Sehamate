import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'patient_home_view_body.dart';

class PatientHomeView extends StatelessWidget {
  const PatientHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Sehamate"),
      backgroundColor: Color(0xffF7F2FD),
      body: PatientHomeViewBody(),
    );
  }
}
