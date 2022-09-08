import 'controller/assistant_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';

class AssistantScreen extends GetWidget<AssistantController> {
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
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin: getMargin(
                                      left: 20, top: 38, right: 19, bottom: 16),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(right: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              svgPath: ImageConstant
                                                                  .imgArrowleftBluegray902)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9,
                                                              bottom: 12),
                                                          child: Text(
                                                              "lbl_assistant"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium22Bluegray901
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.44))),
                                                      CustomIconButton(
                                                          height: 44,
                                                          width: 44,
                                                          shape: IconButtonShape
                                                              .RoundedBorder10,
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgQuestion))
                                                    ]))),
                                        Padding(
                                            padding:
                                                getPadding(top: 45, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                      height: 37,
                                                      width: 37,
                                                      margin: getMargin(
                                                          top: 16, bottom: 199),
                                                      shape: IconButtonShape
                                                          .RoundedBorder18,
                                                      padding: IconButtonPadding
                                                          .PaddingAll5,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCar)),
                                                  Container(
                                                      height: getVerticalSize(
                                                          252.00),
                                                      width: getHorizontalSize(
                                                          281.00),
                                                      margin:
                                                          getMargin(left: 22),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            right:
                                                                                1,
                                                                            bottom:
                                                                                7),
                                                                        decoration: AppDecoration.outlineBluegray90011.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(width: getHorizontalSize(249.00), margin: getMargin(left: 16, top: 16, right: 16, bottom: 157), child: Text("msg_good_morning_f".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium16.copyWith(letterSpacing: 0.16)))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                1),
                                                                        decoration: AppDecoration.outlineGray90033.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .customBorderBL10),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Padding(padding: getPadding(left: 24, top: 17, right: 23), child: Text("msg_check_donate_in".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium18RedA400.copyWith(letterSpacing: 0.18))),
                                                                              Padding(padding: getPadding(left: 24, top: 31, right: 23), child: Text("msg_check_donate_in".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium18RedA400.copyWith(letterSpacing: 0.18))),
                                                                              Container(height: getVerticalSize(1.00), width: getHorizontalSize(280.00), margin: getMargin(top: 15, right: 1), decoration: BoxDecoration(color: ColorConstant.gray200)),
                                                                              Padding(padding: getPadding(left: 24, top: 14, right: 23, bottom: 12), child: Text("msg_check_donate_in".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium18RedA400.copyWith(letterSpacing: 0.18)))
                                                                            ]))),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        280.00),
                                                                margin:
                                                                    getMargin(
                                                                        left: 1,
                                                                        top: 92,
                                                                        bottom:
                                                                            92),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray200))
                                                          ]))
                                                ])),
                                        CustomButton(
                                            width: 291,
                                            text: "msg_check_donate_in".tr,
                                            margin: getMargin(
                                                left: 83, top: 36, right: 1),
                                            shape: ButtonShape.RoundedBorder10,
                                            fontStyle:
                                                ButtonFontStyle.PoppinsMedium18,
                                            alignment: Alignment.centerRight),
                                        Container(
                                            margin:
                                                getMargin(top: 37, right: 10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 37,
                                                                    width: 37,
                                                                    margin: getMargin(
                                                                        top:
                                                                            16),
                                                                    shape: IconButtonShape
                                                                        .RoundedBorder18,
                                                                    padding:
                                                                        IconButtonPadding
                                                                            .PaddingAll5,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgCar)),
                                                                CustomButton(
                                                                    width: 195,
                                                                    text:
                                                                        "msg_that_s_great_f"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            22,
                                                                        bottom:
                                                                            6),
                                                                    variant:
                                                                        ButtonVariant
                                                                            .FillGray101,
                                                                    shape: ButtonShape
                                                                        .RoundedBorder10,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .PaddingAll15,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .PoppinsMedium16)
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          width:
                                                              double.infinity,
                                                          margin: getMargin(
                                                              left: 10, top: 3),
                                                          decoration: AppDecoration
                                                              .fillGray101
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        width: getHorizontalSize(
                                                                            233.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                16,
                                                                            top:
                                                                                16,
                                                                            right:
                                                                                16,
                                                                            bottom:
                                                                                15),
                                                                        child: Text(
                                                                            "msg_can_you_tell_me"
                                                                                .tr,
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium16.copyWith(letterSpacing: 0.16))))
                                                              ])))
                                                ])),
                                        CustomButton(
                                            width: 92,
                                            text: "lbl_ab".tr,
                                            margin: getMargin(
                                                left: 282, top: 37, right: 1),
                                            shape: ButtonShape.RoundedBorder10,
                                            fontStyle:
                                                ButtonFontStyle.PoppinsMedium18,
                                            alignment: Alignment.centerRight),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin:
                                                    getMargin(left: 1, top: 72),
                                                decoration: AppDecoration
                                                    .outlineGray80016
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 31,
                                                              top: 31,
                                                              bottom: 24),
                                                          child: Text(
                                                              "lbl_write_a_message"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular18Gray401
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.18))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 23,
                                                              right: 24,
                                                              bottom: 22),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSend,
                                                              height: getSize(
                                                                  30.00),
                                                              width: getSize(
                                                                  30.00)))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
