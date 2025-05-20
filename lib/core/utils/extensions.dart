import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

extension ContextExtention on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  ColorScheme get colors => ColorScheme.of(this);
  TextTheme get texts => TextTheme.of(this);
  GoRouter get router => GoRouter.of(this);
}

extension DateTimeExtention on DateTime {
  String formate() => DateFormat("dd MMMM yyyy").format(this);
}
