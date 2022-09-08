import '/core/app_export.dart';
import 'package:kyagaba_s_application4/presentation/donor_details_bottomsheet/models/donor_details_model.dart';
import 'package:flutter/material.dart';

class DonorDetailsController extends GetxController {
  TextEditingController callController = TextEditingController();

  TextEditingController requestController = TextEditingController();

  Rx<DonorDetailsModel> donorDetailsModelObj = DonorDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    callController.dispose();
    requestController.dispose();
  }
}
