import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_text_field.dart';
import 'package:sehamate/core/widgets/text_message.dart';

class DoctorChatViewBody extends StatelessWidget {
  const DoctorChatViewBody({super.key});

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
          height: 150,
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
          child: Row(
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
        ),
      ],
    );
  }
}
