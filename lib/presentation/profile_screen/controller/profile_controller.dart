import '/core/app_export.dart';
import 'package:kyagaba_s_application4/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  TextEditingController callController1 = TextEditingController();

  TextEditingController requestController1 = TextEditingController();

  TextEditingController group196Controller = TextEditingController();

  TextEditingController group195Controller = TextEditingController();

  TextEditingController group194Controller = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    callController1.dispose();
    requestController1.dispose();
    group196Controller.dispose();
    group195Controller.dispose();
    group194Controller.dispose();
  }
}
