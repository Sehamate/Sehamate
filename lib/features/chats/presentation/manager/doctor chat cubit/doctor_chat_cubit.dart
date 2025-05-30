import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'doctor_chat_state.dart';

class DoctorChatCubit extends Cubit<DoctorChatState> {
  DoctorChatCubit() : super(DoctorChatInitial());
  List<String> selectedFiles = [];

  Future pickfile() async {
    FilePickerResult? picker = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.any,
    );
    if (picker == null) return;
    selectedFiles = picker.files.map((file) => file.name).toList();
  }
}
