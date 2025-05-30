import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';
import 'package:sehamate/core/widgets/text_message.dart';
import 'package:sehamate/features/chats/presentation/manager/patient%20chat%20cubit/patient_chat_cubit.dart';

class PatientChatViewBody extends StatefulWidget {
  const PatientChatViewBody({super.key});

  @override
  State<PatientChatViewBody> createState() => _PatientChatViewBodyState();
}

class _PatientChatViewBodyState extends State<PatientChatViewBody> {
  PatientChatCubit get cubit => BlocProvider.of(context);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Hi. How Are You Today?",
                  style: context.texts.titleMedium!.copyWith(color: context.colors.primary),
                ),
                SizedBox(height: 16),
                ...List.generate(10, (index) {
                  return TextMessage(isMe: index % 2 == 0);
                }),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          width: double.maxFinite,
          // height: 150,
          decoration: BoxDecoration(
            color: Color(0xffF7F2FD),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.5),
                offset: Offset(0, -2),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            children: [
              if (cubit.selectedFiles.isNotEmpty)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(cubit.selectedFiles.length, (index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10,
                          children: [
                            Text(
                              cubit.selectedFiles[index],
                              style: TextStyle(color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                cubit.selectedFiles.removeAt(index);
                                setState(() {});
                              },
                              child: Icon(Icons.close),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              Row(
                spacing: 16,
                children: [
                  Expanded(child: CustomTextField(hint: "Message")),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(Icons.send, color: Colors.white),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () async {
                  await cubit.pickfile();
                  setState(() {});
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.colors.primary,
                  ),
                  child: Center(
                    child: Icon(Icons.attach_file, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
