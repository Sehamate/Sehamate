import 'package:flutter/material.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/core/utils/extensions.dart';
import 'package:sehamate/core/widgets/custom_button.dart';

import 'settings_item.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.router.push(Routes.patientProfileView);
              },
              child: Container(
                padding: EdgeInsets.all(16),
                width: double.maxFinite,
                height: 120,
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      foregroundImage: NetworkImage(
                        'https://tse4.mm.bing.net/th?id=OIF.kJUP%2bXyHd1Dn174TF6Afxg&pid=Api&P=0&h=220',
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gamal Mosbah",
                            style: context.texts.titleMedium,
                          ),
                          Expanded(
                            child: Text(
                              "gamalmosbah@gmail.com",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.texts.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Preferences",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SettingsItem(
              onTap: () {
                context.router.push(Routes.notificationsView);
              },
              title: "Notifications",
              subtitle: "Push, email & SMS settings",
              icon: Icons.notifications,
            ),
            SizedBox(height: 16),
            SettingsItem(
              onTap: () {
                context.router.push(Routes.changePasswordView);
              },
              title: "Privacy & Security",
              subtitle: "Change password",
              icon: Icons.lock,
            ),
            SizedBox(height: 20),
            Text(
              "Support and About",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SettingsItem(
              onTap: () {
                context.router.push(Routes.helpCenterView);
              },
              title: "Help Center",
              icon: Icons.lock,
            ),
            SizedBox(height: 16),
            SettingsItem(
              onTap: () {},
              title: "Terms & Services",
              icon: Icons.help,
            ),
            SizedBox(height: 16),
            SettingsItem(
              onTap: () {},
              title: "Privacy Policy",
              icon: Icons.shield,
            ),
            SizedBox(height: 16),
            CustomButton(
              backgroundColor: Colors.transparent,
              foregroundColor: context.colors.primary,
              border: Border.all(color: context.colors.primary),
              text: "Logout",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
