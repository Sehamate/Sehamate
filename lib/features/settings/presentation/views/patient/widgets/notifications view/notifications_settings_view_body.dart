import 'package:flutter/material.dart';

import 'notifications_settings_item.dart';

class NotificationsSettingsViewBody extends StatelessWidget {
  const NotificationsSettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          NotificationsSettingsItem(
            title: "Allow Push Notifications",
            onChanged: (value) {},
          ),
          SizedBox(height: 16),
          NotificationsSettingsItem(
            title: "Allow Emails",
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
