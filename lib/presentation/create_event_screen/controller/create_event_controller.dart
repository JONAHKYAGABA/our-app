import '/core/app_export.dart';
import 'package:kyagaba_s_application4/presentation/create_event_screen/models/create_event_model.dart';
import 'package:flutter/material.dart';

class CreateEventController extends GetxController {
  TextEditingController group181Controller = TextEditingController();

  TextEditingController group180Controller = TextEditingController();

  TextEditingController group179Controller = TextEditingController();

  TextEditingController group176Controller = TextEditingController();

  Rx<CreateEventModel> createEventModelObj = CreateEventModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group181Controller.dispose();
    group180Controller.dispose();
    group179Controller.dispose();
    group176Controller.dispose();
  }
}
