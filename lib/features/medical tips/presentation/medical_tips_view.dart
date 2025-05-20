import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';
import 'package:sehamate/features/medical%20tips/presentation/widgets/medical_tips_view_body.dart';

class MedicalTipsView extends StatelessWidget {
  const MedicalTipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5EDFC),
      appBar: CustomAppBar(title: "Medical Tips", canBack: true),
      body: MedicalTipsViewBody(),
    );
  }
}
