import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

import 'widgets/privacy policy view/privacy_policy_view_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Privacy Policy", canBack: true),
      body: SafeArea(child: PrivacyPolicyViewBody()),
    );
  }
}
