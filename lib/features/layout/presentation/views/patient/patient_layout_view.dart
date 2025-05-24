import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';

import 'widgets/more_bottom_sheet.dart';
import 'widgets/patient_home_bottom_sheet.dart';

class PatientLayoutView extends StatefulWidget {
  final Widget child;
  const PatientLayoutView({super.key, required this.child});

  @override
  State<PatientLayoutView> createState() => _PatientLayoutViewState();
}

class _PatientLayoutViewState extends State<PatientLayoutView> {
  String get currentView => context.router.routerDelegate.currentConfiguration.uri.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF7F2FD),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 27),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => PatientHomeBottomSheet(),
          );
        },
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
                  context.router.go(Routes.patientHomeView);
                },
                child: Image.asset(
                  'assets/icons/home.png',
                  color: context.colors.primary.withValues(
                    alpha: currentView == Routes.patientHomeView ? 1 : 0.3,
                  ),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.router.go(Routes.patientChatView);
                },
                child: Image.asset(
                  'assets/icons/chat.png',
                  color: context.colors.primary.withValues(
                    alpha: currentView == Routes.patientChatView ? 1 : 0.3,
                  ),
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.router.go(Routes.emergencyView);
                },
                child: Image.asset(
                  'assets/icons/lighting.png',
                  color: context.colors.primary.withValues(
                    alpha: currentView == Routes.emergencyView ? 1 : 0.3,
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
                    alpha: 0.3,
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
