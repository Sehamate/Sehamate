import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';
import 'package:sehamate/features/settings/presentation/views/patient/widgets/settings%20view/setting_view_body.dart';

class SettingView extends StatelessWidget {
  final bool canBack;
  const SettingView({super.key, required this.canBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5EDFC),
      appBar: CustomAppBar(title: "Settings", canBack: canBack),
      body: SettingViewBody(),
    );
  }
}
