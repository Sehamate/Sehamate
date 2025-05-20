import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';
import 'package:sehamate/features/profile/presentation/views/widgets/patient/patient_profile_view_body.dart';

class PatientProfileView extends StatelessWidget {
  const PatientProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5EDFC),
      appBar: CustomAppBar(
        title: "Your Profile",
        canBack: true,
      ),
      body: PatientProfileViewBody(),
    );
  }
}
