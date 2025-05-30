import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';
import 'package:sehamate/features/chats/presentation/manager/doctor%20chat%20cubit/doctor_chat_cubit.dart';

import 'widgets/doctor_chat_view_body.dart';

class DoctorChatView extends StatelessWidget {
  const DoctorChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorChatCubit(),
      child: Scaffold(
        appBar: CustomAppBar(title: "Chatbot"),
        body: DoctorChatViewBody(),
      ),
    );
  }
}
