import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/notifications view/notifications_settings_view_body.dart';

class NotificationsSettingsView extends StatelessWidget {
  const NotificationsSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5EDFC),
      appBar: CustomAppBar(title: "Notifications", canBack: true),
      body: NotificationsSettingsViewBody(),
    );
  }
}
