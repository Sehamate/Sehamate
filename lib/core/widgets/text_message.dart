import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

class TextMessage extends StatelessWidget {
  final bool isMe;
  const TextMessage({super.key, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.only(bottom: 20),
          constraints: BoxConstraints(maxWidth: context.width / 2),
          decoration: BoxDecoration(
            color: isMe ? context.colors.primary.withValues(alpha: 0.5) : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "I’ve been feeling dizzy and tired lately. Should I be concerned?",
            style: TextStyle(color: isMe ? null : Colors.black),
          ),
        ),
      ],
    );
  }
}
