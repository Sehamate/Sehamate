import 'package:flutter/material.dart';
import 'package:sehamate/core/widgets/custom_app_bar.dart';

class FirstAidView extends StatelessWidget {
  const FirstAidView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "First Aid", canBack: true),
    );
  }
}
