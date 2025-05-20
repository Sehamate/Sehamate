import 'package:flutter/material.dart';

import 'widgets/start view/start_view_body.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8211D3),
      body: StartViewBody(),
    );
  }
}
