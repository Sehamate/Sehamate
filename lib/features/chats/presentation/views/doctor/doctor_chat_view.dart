import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/doctor_chat_view_body.dart';

class DoctorChatView extends StatelessWidget {
  const DoctorChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Chatbot"),
      body: DoctorChatViewBody(),
    );
  }
}
