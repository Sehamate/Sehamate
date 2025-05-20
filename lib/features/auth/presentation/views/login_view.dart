import 'package:flutter/material.dart';

import 'widgets/login view/login_view_body.dart';

class LoginView extends StatelessWidget {
  final int userType;
  const LoginView({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(userType: userType),
    );
  }
}
