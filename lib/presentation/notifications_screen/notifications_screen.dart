import 'controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(alignment: Alignment.topRight, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  width: size.width,
                                  margin: getMargin(
                                      left: 20, top: 38, right: 20, bottom: 38),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            height: getSize(44.00),
                                            width: getSize(44.00),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          height:
                                                              getSize(44.00),
                                                          width: getSize(44.00),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray100,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5.00))))),
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapImgArrowleft();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 18,
                                                                      top: 14,
                                                                      right: 18,
                                                                      bottom:
                                                                          14),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleft,
                                                                  height:
                                                                      getVerticalSize(
                                                                          15.00),
                                                                  width: getHorizontalSize(
                                                                      7.00)))))
                                                ])),
                                        Container(
                                            height: getSize(44.00),
                                            width: getSize(44.00),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            5.00))))
                                      ]))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding: getPadding(
                                      left: 31, top: 47, right: 31, bottom: 47),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("lbl_notifications".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium22Bluegray901
                                                    .copyWith(
                                                        letterSpacing: 0.44))),
                                        Padding(
                                            padding:
                                                getPadding(left: 83, top: 2),
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgEdit,
                                                height: getSize(20.00),
                                                width: getSize(20.00)))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
