import '/core/app_export.dart';
import 'package:kyagaba_s_application4/presentation/create_a_request_screen/models/create_a_request_model.dart';
import 'package:flutter/material.dart';

class CreateARequestController extends GetxController {
  TextEditingController group213Controller = TextEditingController();

  TextEditingController group212Controller = TextEditingController();

  TextEditingController group210Controller = TextEditingController();

  Rx<CreateARequestModel> createARequestModelObj = CreateARequestModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group213Controller.dispose();
    group212Controller.dispose();
    group210Controller.dispose();
  }
}
