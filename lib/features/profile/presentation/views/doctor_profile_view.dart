import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/doctor/doctor_profile_view_body.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5EDFC),
      appBar: CustomAppBar(title: "Profile"),
      body: DoctorProfileViewBody(),
    );
  }
}
