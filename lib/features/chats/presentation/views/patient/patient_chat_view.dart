import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/patient_chat_view_body.dart';

class PatientChatView extends StatelessWidget {
  const PatientChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Chatbot",
      ),
      backgroundColor: Color(0xffF7F2FD),
      body: PatientChatViewBody(),
    );
  }
}
