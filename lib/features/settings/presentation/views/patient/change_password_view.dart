import 'package:flutter/material.dart';

import 'widgets/change password view/change_password_view_body.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangePasswordViewBody(),
    );
  }
}
