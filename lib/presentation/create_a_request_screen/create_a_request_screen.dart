import 'controller/create_a_request_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/core/utils/validation_functions.dart';
import 'package:kyagaba_s_application4/widgets/custom_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateARequestScreen extends GetWidget<CreateARequestController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 38,
                                          right: 20,
                                          bottom: 20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: size.width,
                                                margin: getMargin(right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
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
                                                              left: 44,
                                                              top: 13,
                                                              bottom: 8),
                                                          child: Text(
                                                              "msg_create_a_reques"
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
                                                                          0.44)))
                                                    ])),
                                            CustomTextFormField(
                                                width: 374,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .group213Controller,
                                                hintText: "lbl_city".tr,
                                                margin: getMargin(top: 123),
                                                prefix: Container(
                                                    margin: getMargin(
                                                        left: 25,
                                                        top: 19,
                                                        right: 28,
                                                        bottom: 19),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocation)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getSize(21.00),
                                                        minHeight:
                                                            getSize(21.00))),
                                            CustomTextFormField(
                                                width: 374,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .group212Controller,
                                                hintText: "lbl_hospital".tr,
                                                margin: getMargin(top: 25),
                                                prefix: Container(
                                                    margin: getMargin(
                                                        left: 25,
                                                        top: 21,
                                                        right: 28,
                                                        bottom: 21),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgVector16X17)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getSize(16.00),
                                                        minHeight:
                                                            getSize(16.00))),
                                            Container(
                                                margin: getMargin(top: 25),
                                                decoration: AppDecoration
                                                    .outlineGray70019
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 19,
                                                              bottom: 19),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgFire,
                                                              height:
                                                                  getVerticalSize(
                                                                      21.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      14.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 29,
                                                              top: 23,
                                                              bottom: 18),
                                                          child: Text(
                                                              "lbl_blood_type"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium18Gray601
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.36)))
                                                    ])),
                                            CustomTextFormField(
                                                width: 374,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .group210Controller,
                                                hintText: "lbl_mobile".tr,
                                                margin: getMargin(top: 25),
                                                textInputAction:
                                                    TextInputAction.done,
                                                prefix: Container(
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 23,
                                                        right: 27,
                                                        bottom: 17),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgCall)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getSize(19.00),
                                                        minHeight:
                                                            getSize(19.00)),
                                                validator: (value) {
                                                  if (!isValidPhone(value)) {
                                                    return "Please enter valid phone number";
                                                  }
                                                  return null;
                                                }),
                                            Container(
                                                margin: getMargin(top: 25),
                                                decoration: AppDecoration
                                                    .outlineGray70019
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 25,
                                                              top: 24,
                                                              bottom: 78),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgFile16X16,
                                                              height: getSize(
                                                                  16.00),
                                                              width: getSize(
                                                                  16.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 28,
                                                              top: 21,
                                                              bottom: 80),
                                                          child: Text(
                                                              "lbl_add_a_note"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium18Gray601
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.36)))
                                                    ])),
                                            CustomButton(
                                                width: 186,
                                                text: "lbl_request".tr,
                                                margin: getMargin(
                                                    left: 96,
                                                    top: 68,
                                                    right: 92),
                                                shape:
                                                    ButtonShape.RoundedBorder10,
                                                padding:
                                                    ButtonPadding.PaddingAll15,
                                                fontStyle: ButtonFontStyle
                                                    .PoppinsMedium24,
                                                alignment: Alignment.center)
                                          ])))
                            ])))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
