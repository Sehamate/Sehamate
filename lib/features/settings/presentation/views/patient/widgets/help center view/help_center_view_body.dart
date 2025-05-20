import 'package:flutter/material.dart';
import 'package:sehamate/core/utils/extensions.dart';

import 'help_item.dart';

class HelpCenterViewBody extends StatelessWidget {
  const HelpCenterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Frequently Asked Questions",
            style: context.texts.titleSmall!.copyWith(color: Colors.black),
          ),
          SizedBox(height: 16),
          HelpItem(
            title: "1.How can i change my email?",
            subtitle:
                "You can change your personal information, including your email, through the edit button on the top right of your profile page. You can also access the ‘Edit Profile’ Page through your settings.",
          ),
          SizedBox(height: 16),
          HelpItem(
            title: "2.How can i change my password?",
            subtitle: "Go to ‘Privacy & Security’ in your settings.",
          ),
        ],
      ),
    );
  }
}
