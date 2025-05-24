import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';
import 'package:sehamate/features/emergency/presentation/views/widgets/emergency%20view/emergency_view_body.dart';

class EmergencyView extends StatelessWidget {
  const EmergencyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFE7FA),
      appBar: CustomAppBar(title: "Emergency"),
      body: EmergencyViewBody(),
    );
  }
}
