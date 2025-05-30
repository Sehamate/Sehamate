import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'patient_chat_state.dart';

class PatientChatCubit extends Cubit<PatientChatState> {
  PatientChatCubit() : super(PatientChatInitial());
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
