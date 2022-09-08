import '/core/app_export.dart';
import 'package:kyagaba_s_application4/presentation/map_screen/models/map_model.dart';
import 'package:flutter/material.dart';

class MapController extends GetxController {
  TextEditingController group215Controller = TextEditingController();

  Rx<MapModel> mapModelObj = MapModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group215Controller.dispose();
  }
}
