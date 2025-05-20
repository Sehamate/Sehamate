import 'package:flutter/material.dart';

import 'widgets/register view/register_view_body.dart';

class RegisterView extends StatelessWidget {
  final int userType;
  const RegisterView({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterViewBody(userType: userType),
    );
  }
}
