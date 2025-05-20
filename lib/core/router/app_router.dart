import 'package:go_router/go_router.dart';
import 'package:sehamate/core/router/routes.dart';
import 'package:sehamate/features/auth/presentation/views/about_patient_view.dart';
import 'package:sehamate/features/auth/presentation/views/login_view.dart';
import 'package:sehamate/features/auth/presentation/views/register_view.dart';
import 'package:sehamate/features/auth/presentation/views/start_view.dart';
import 'package:sehamate/features/chats/presentation/views/doctor/doctor_chat_view.dart';
import 'package:sehamate/features/chats/presentation/views/patient/patient_chat_view.dart';
import 'package:sehamate/features/emergency/presentation/views/emergency_view.dart';
import 'package:sehamate/features/home/presentation/views/doctor/doctor_home_view.dart';
import 'package:sehamate/features/home/presentation/views/patient/patient_home_view.dart';
import 'package:sehamate/features/layout/presentation/views/doctor/doctor_layout_view.dart';
import 'package:sehamate/features/layout/presentation/views/patient/patient_layout_view.dart';
import 'package:sehamate/features/medical%20tips/presentation/medical_tips_view.dart';
import 'package:sehamate/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:sehamate/features/profile/presentation/views/doctor_profile_view.dart';
import 'package:sehamate/features/profile/presentation/views/patient_profile_view.dart';
import 'package:sehamate/features/settings/presentation/views/patient/help_center_view.dart';
import 'package:sehamate/features/settings/presentation/views/patient/notifications_settings_view.dart';
import 'package:sehamate/features/settings/presentation/views/patient/setting_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => StartView(),
      ),
      GoRoute(
        path: Routes.loginView,
        builder: (context, state) => LoginView(userType: state.extra as int),
      ),
      GoRoute(
        path: Routes.registerView,
        builder: (context, state) => RegisterView(userType: state.extra as int),
      ),
      GoRoute(
        path: Routes.moreAboutView,
        builder: (context, state) => AboutPatientView(userType: state.extra as int),
      ),
      GoRoute(
        path: Routes.onboardingView,
        builder: (context, state) => OnboardingView(userType: state.extra as int),
      ),
      ShellRoute(
        builder: (context, state, child) => DoctorLayoutView(child: child),
        routes: [
          GoRoute(
            path: Routes.doctorHomeView,
            builder: (context, state) => DoctorHomeView(),
          ),
          GoRoute(
            path: Routes.doctorChatView,
            builder: (context, state) => DoctorChatView(),
          ),
          GoRoute(
            path: Routes.doctorProfileView,
            builder: (context, state) => DoctorProfileView(),
          ),
          GoRoute(
            path: Routes.doctorSettingsView,
            builder: (context, state) => SettingView(canBack: false),
          ),
        ],
      ),
      ShellRoute(
        builder: (context, state, child) => PatientLayoutView(child: child),
        routes: [
          GoRoute(
            path: Routes.patientHomeView,
            builder: (context, state) => PatientHomeView(),
          ),
          GoRoute(
            path: Routes.patientChatView,
            builder: (context, state) => PatientChatView(),
          ),
          GoRoute(
            path: Routes.emergencyView,
            builder: (context, state) => EmergencyView(),
          ),
        ],
      ),
      GoRoute(
        path: Routes.medicalTipsView,
        builder: (context, state) => MedicalTipsView(),
      ),
      GoRoute(
        path: Routes.patientProfileView,
        builder: (context, state) => PatientProfileView(),
      ),
      GoRoute(
        path: Routes.settingView,
        builder: (context, state) => SettingView(canBack: true),
      ),
      GoRoute(
        path: Routes.notificationsView,
        builder: (context, state) => NotificationsSettingsView(),
      ),
      GoRoute(
        path: Routes.helpCenterView,
        builder: (context, state) => HelpCenterView(),
      ),
    ],
  );
}
