import 'controller/create_event_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/core/utils/validation_functions.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateEventScreen extends GetWidget<CreateEventController> {
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
                                                              left: 52,
                                                              top: 10,
                                                              bottom: 11),
                                                          child: Text(
                                                              "lbl_create_an_event"
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
                                                    .group181Controller,
                                                hintText: "lbl_location".tr,
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
                                                    .group180Controller,
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
                                                margin: getMargin(top: 27),
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
                                                              left: 13,
                                                              top: 13,
                                                              bottom: 16),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgDate1,
                                                              height:
                                                                  getVerticalSize(
                                                                      31.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      26.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 32,
                                                              top: 12,
                                                              bottom: 29),
                                                          child: Text(
                                                              "lbl_date".tr,
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
                                                    .group179Controller,
                                                hintText: "lbl_mobile".tr,
                                                margin: getMargin(top: 22),
                                                padding: TextFormFieldPadding
                                                    .PaddingTB30,
                                                prefix: Container(
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 7,
                                                        right: 27,
                                                        bottom: 30),
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
                                                margin: getMargin(top: 22),
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
                                                              top: 20,
                                                              bottom: 82),
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
                                                              top: 19,
                                                              bottom: 82),
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
                                            CustomTextFormField(
                                                width: 186,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .group176Controller,
                                                hintText: "lbl_add_event".tr,
                                                margin: getMargin(
                                                    left: 96,
                                                    top: 72,
                                                    right: 92),
                                                variant: TextFormFieldVariant
                                                    .FillRedA400,
                                                shape: TextFormFieldShape
                                                    .RoundedBorder10,
                                                padding: TextFormFieldPadding
                                                    .PaddingTB22,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .PoppinsMedium20,
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment: Alignment.center)
                                          ])))
                            ])))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
