import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.redA400,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 132, top: 214, right: 132),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLogo,
                                  height: getVerticalSize(110.00),
                                  width: getHorizontalSize(132.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 64, top: 54, right: 64),
                              child: Text("lbl_ugblood_donate".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold33
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 147),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgGroup8,
                                  height: getVerticalSize(273.00),
                                  width: getHorizontalSize(414.00))))
                    ]))))));
  }
}
