import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/medical tips details view/medical_tips_details_view_body.dart';

class MedicalTipsDetailsView extends StatelessWidget {
  const MedicalTipsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Tips Details", canBack: true),
      body: MedicalTipsDetailsViewBody(),
    );
  }
}
