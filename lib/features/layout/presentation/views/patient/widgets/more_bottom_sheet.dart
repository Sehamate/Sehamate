import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';

class MoreBottomSheet extends StatelessWidget {
  const MoreBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Go To",
            style: context.texts.titleMedium!.copyWith(color: context.colors.primary),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              context.router.pop();
              context.router.push(Routes.medicalTipsView);
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Image.asset(
                    'assets/icons/idea.png',
                    color: context.colors.secondary,
                    height: 25,
                  ),
                  Text(
                    "Medical Tips",
                    style: context.texts.titleSmall!.copyWith(color: context.colors.secondary),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(color: context.colors.secondary),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              context.router.pop();
              context.router.push(Routes.patientProfileView);
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Image.asset(
                    'assets/icons/profile.png',
                    color: context.colors.secondary,
                    height: 25,
                  ),
                  Text(
                    "Profile",
                    style: context.texts.titleSmall!.copyWith(color: context.colors.secondary),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(color: context.colors.secondary),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              context.router.pop();
              context.router.push(Routes.settingView);
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Image.asset(
                    'assets/icons/setting.png',
                    color: context.colors.secondary,
                    height: 25,
                  ),
                  Text(
                    "Settings",
                    style: context.texts.titleSmall!.copyWith(color: context.colors.secondary),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
