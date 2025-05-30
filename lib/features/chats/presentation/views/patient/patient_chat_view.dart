import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';
import 'package:sehamate/features/chats/presentation/manager/patient%20chat%20cubit/patient_chat_cubit.dart';

import 'widgets/patient_chat_view_body.dart';

class PatientChatView extends StatelessWidget {
  const PatientChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PatientChatCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Chatbot",
        ),
        backgroundColor: Color(0xffF7F2FD),
        body: PatientChatViewBody(),
      ),
    );
  }
}
