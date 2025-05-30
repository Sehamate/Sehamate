import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/doctor/doctor_profile_view_body.dart';
import 'widgets/doctor/edit_doctor_profile.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF5EDFC),
      appBar: CustomAppBar(
        title: "Profile",
        action: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => EditDoctorProfileWidget(),
            );
          },
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
      ),
      body: DoctorProfileViewBody(),
    );
  }
}
