import '../controller/home_page_controller.dart';
import '../models/sliderbloodone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class SliderbloodoneItemWidget extends StatelessWidget {
  SliderbloodoneItemWidget(this.sliderbloodoneItemModelObj);

  SliderbloodoneItemModel sliderbloodoneItemModelObj;

  var controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CommonImageView(
        imagePath: ImageConstant.imgBlood1,
        height: getVerticalSize(
          179.00,
        ),
        width: getHorizontalSize(
          359.00,
        ),
      ),
    );
  }
}
