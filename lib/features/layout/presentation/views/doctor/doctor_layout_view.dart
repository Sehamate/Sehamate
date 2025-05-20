import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';

class DoctorLayoutView extends StatefulWidget {
  final Widget child;
  const DoctorLayoutView({super.key, required this.child});

  @override
  State<DoctorLayoutView> createState() => _DoctorLayoutViewState();
}

class _DoctorLayoutViewState extends State<DoctorLayoutView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5EDFC),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: BottomAppBar(
          padding: EdgeInsets.symmetric(horizontal: 32),
          color: Colors.white,
          elevation: 10,
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  currentIndex = 0;
                  setState(() {});
                  context.router.go(Routes.doctorHomeView);
                },
                child: Image.asset(
                  'assets/icons/home.png',
                  color: context.colors.primary.withValues(alpha: currentIndex == 0 ? 1 : 0.4),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  currentIndex = 1;
                  setState(() {});
                  context.router.go(Routes.doctorChatView);
                },
                child: Image.asset(
                  'assets/icons/chat.png',
                  color: context.colors.primary.withValues(alpha: currentIndex == 1 ? 1 : 0.4),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  currentIndex = 2;
                  setState(() {});
                  context.router.go(Routes.doctorProfileView);
                },
                child: Image.asset(
                  'assets/icons/profile.png',
                  color: context.colors.primary.withValues(alpha: currentIndex == 2 ? 1 : 0.4),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  currentIndex = 3;
                  setState(() {});
                  context.router.go(Routes.doctorSettingsView);
                },
                child: Image.asset(
                  'assets/icons/setting.png',
                  color: context.colors.primary.withValues(alpha: currentIndex == 3 ? 1 : 0.4),
                  height: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      body: widget.child,
    );
  }
}
