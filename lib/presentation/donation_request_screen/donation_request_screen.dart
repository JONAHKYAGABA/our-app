import '../donation_request_screen/widgets/listname_item_widget.dart';
import 'controller/donation_request_controller.dart';
import 'models/listname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_floating_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';

class DonationRequestScreen extends GetWidget<DonationRequestController> {
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
                        child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: size.height,
                                      width: size.width,
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Stack(children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 38,
                                                    right: 20,
                                                    bottom: 10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width: size.width,
                                                          margin: getMargin(
                                                              right: 10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 44,
                                                                    width: 44,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillGray100,
                                                                    onTap: () {
                                                                      onTapBtntf();
                                                                    },
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgArrowleftBluegray902)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            59,
                                                                        top: 12,
                                                                        bottom:
                                                                            9),
                                                                    child: Text(
                                                                        "msg_donation_reques"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium22Bluegray901
                                                                            .copyWith(letterSpacing: 0.44)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 28),
                                                          child: Obx(() =>
                                                              ListView.builder(
                                                                  physics:
                                                                      BouncingScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemCount: controller
                                                                      .donationRequestModelObj
                                                                      .value
                                                                      .listnameItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    ListnameItemModel
                                                                        model =
                                                                        controller
                                                                            .donationRequestModelObj
                                                                            .value
                                                                            .listnameItemList[index];
                                                                    return ListnameItemWidget(
                                                                        model);
                                                                  }))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  79.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  374.00),
                                                          margin: getMargin(
                                                              top: 53),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                10),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgSubtract,
                                                                            height: getVerticalSize(55.00),
                                                                            width: getHorizontalSize(374.00)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                9,
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                10,
                                                                            bottom:
                                                                                7),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgSearchRedA400,
                                                                            height: getVerticalSize(32.00),
                                                                            width: getHorizontalSize(354.00))))
                                                              ]))
                                                    ])))
                                      ]))),
                              CustomFloatingButton(
                                  height: 48,
                                  width: 48,
                                  margin: getMargin(
                                      left: 183,
                                      top: 41,
                                      right: 183,
                                      bottom: 41),
                                  alignment: Alignment.bottomCenter,
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgFire48X48,
                                      height: getVerticalSize(24.00),
                                      width: getHorizontalSize(24.00)))
                            ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
