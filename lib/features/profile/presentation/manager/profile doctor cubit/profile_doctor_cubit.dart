import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_doctor_state.dart';

class ProfileDoctorCubit extends Cubit<ProfileDoctorState> {
  ProfileDoctorCubit() : super(ProfileDoctorInitial());
  final TextEditingController biographyController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
}
