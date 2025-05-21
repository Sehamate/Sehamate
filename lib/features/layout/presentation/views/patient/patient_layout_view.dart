import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';

import 'widgets/more_bottom_sheet.dart';

class PatientLayoutView extends StatefulWidget {
  final Widget child;
  const PatientLayoutView({super.key, required this.child});

  @override
  State<PatientLayoutView> createState() => _PatientLayoutViewState();
}

class _PatientLayoutViewState extends State<PatientLayoutView> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF7F2FD),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 27),
        onPressed: () {},
      ),
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
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  currentIndex = 0;
                  setState(() {});
                  context.router.go(Routes.patientHomeView);
                },
                child: Image.asset(
                  'assets/icons/home.png',
                  color: context.colors.primary.withValues(
                    alpha: currentIndex == 0 ? 1 : 0.3,
                  ),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  currentIndex = 1;
                  setState(() {});
                  context.router.go(Routes.patientChatView);
                },
                child: Image.asset(
                  'assets/icons/chat.png',
                  color: context.colors.primary.withValues(
                    alpha: currentIndex == 1 ? 1 : 0.3,
                  ),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  currentIndex = 2;
                  setState(() {});
                  context.router.go(Routes.emergencyView);
                },
                child: Image.asset(
                  'assets/icons/lighting.png',
                  color: context.colors.primary.withValues(
                    alpha: currentIndex == 2 ? 1 : 0.3,
                  ),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => MoreBottomSheet(),
                  );
                },
                child: Image.asset(
                  'assets/icons/more.png',
                  color: context.colors.primary.withValues(
                    alpha: currentIndex == 3 ? 1 : 0.3,
                  ),
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
