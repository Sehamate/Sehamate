import 'package:flutter/material.dart';
import 'package:sehamate/core/router/app_router.dart';
import 'package:sehamate/core/theme/app_theme.dart';

void main() {
  runApp(const SehamateApp());
}

class SehamateApp extends StatelessWidget {
  const SehamateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: AppTheme.data,
    );
  }
}
