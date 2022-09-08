import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_search_view.dart';
import 'package:kyagaba_s_application4/widgets/custom_switch.dart';
import 'package:kyagaba_s_application4/widgets/custom_text_form_field.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 20, top: 38, right: 20),
                              child: Container(
                                  height: getVerticalSize(44.00),
                                  width: getHorizontalSize(374.00),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      height: getSize(44.00),
                                                      width: getSize(44.00),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getSize(
                                                                            44.00),
                                                                    width: getSize(
                                                                        44.00),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray100,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(5.00))))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapImgArrowleft();
                                                                        },
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 14,
                                                                                right: 18,
                                                                                bottom: 14),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getVerticalSize(15.00), width: getHorizontalSize(7.00)))))
                                                          ])),
                                                  Container(
                                                      height: getSize(44.00),
                                                      width: getSize(44.00),
                                                      margin:
                                                          getMargin(left: 286),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      5.00))))
                                                ])),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 11,
                                                    top: 9,
                                                    right: 11,
                                                    bottom: 10),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_profile".tr,
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
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 119,
                                                              top: 2),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgEdit,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00)))
                                                    ])))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getSize(103.00),
                              width: getSize(103.00),
                              margin: getMargin(left: 20, top: 10, right: 20),
                              child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(10.00))),
                                  child: Stack(children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 7,
                                                top: 7,
                                                right: 6,
                                                bottom: 6),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle27,
                                                    height: getSize(89.00),
                                                    width: getSize(89.00)))))
                                  ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 50, right: 20),
                              child: Text("lbl_mark_mawejje".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium30
                                      .copyWith(letterSpacing: 1.05)))),
                      Padding(
                          padding: getPadding(left: 93, top: 12, right: 93),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 1, bottom: 5),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgLocation16X13,
                                        height: getVerticalSize(14.00),
                                        width: getHorizontalSize(12.00))),
                                Padding(
                                    padding: getPadding(left: 38, top: 1),
                                    child: Text("lbl_kampala_uganda".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular18
                                            .copyWith(letterSpacing: 0.63)))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 41, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomTextFormField(
                                        width: 158,
                                        focusNode: FocusNode(),
                                        controller: controller.callController1,
                                        hintText: "lbl_call_now".tr,
                                        variant: TextFormFieldVariant
                                            .FillBluegray400,
                                        shape:
                                            TextFormFieldShape.RoundedBorder10,
                                        padding:
                                            TextFormFieldPadding.PaddingT18,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsMedium16,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 24,
                                                top: 15,
                                                right: 18,
                                                bottom: 14),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgUser)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(22.00),
                                            minHeight: getSize(22.00))),
                                    CustomTextFormField(
                                        width: 158,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.requestController1,
                                        hintText: "lbl_request".tr,
                                        variant:
                                            TextFormFieldVariant.FillRedA400,
                                        shape:
                                            TextFormFieldShape.RoundedBorder10,
                                        padding:
                                            TextFormFieldPadding.PaddingT20,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsMedium20,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 22,
                                                top: 15,
                                                right: 21,
                                                bottom: 15),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgReply)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(21.00),
                                            minHeight: getSize(21.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 20, top: 43, right: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10.00))),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        decoration: AppDecoration
                                            .outlineBluegray70026
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 23,
                                                      right: 10),
                                                  child: Text("lbl_a".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium30Bluegray901
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 19,
                                                      right: 10,
                                                      bottom: 14),
                                                  child: Text(
                                                      "lbl_blood_type".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14Gray601
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.14)))
                                            ])),
                                    Container(
                                        decoration: AppDecoration
                                            .outlineBluegray70026
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 22,
                                                      right: 20),
                                                  child: Text("lbl_05".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium30Bluegray901
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 18,
                                                      right: 20,
                                                      bottom: 17),
                                                  child: Text("lbl_donated".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14Gray601
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.14)))
                                            ])),
                                    Container(
                                        decoration: AppDecoration
                                            .outlineBluegray70026
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15,
                                                      top: 22,
                                                      right: 15),
                                                  child: Text("lbl_02".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium30Bluegray901
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15,
                                                      top: 19,
                                                      right: 13,
                                                      bottom: 14),
                                                  child: Text(
                                                      "lbl_requested".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14Gray601
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.14)))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 20, top: 55, right: 20),
                              decoration: AppDecoration.outlineGray7001e
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 17, bottom: 16),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgBookmark,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width:
                                                      getHorizontalSize(18.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 3,
                                                      bottom: 3),
                                                  child: Text(
                                                      "msg_available_for_d".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium14Gray601
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.28)))
                                            ])),
                                    Obx(() => CustomSwitch(
                                        padding: getPadding(
                                            top: 18, right: 18, bottom: 17),
                                        value:
                                            controller.isSelectedSwitch.value,
                                        onChanged: (value) {
                                          controller.isSelectedSwitch.value =
                                              value;
                                        }))
                                  ]))),
                      CustomTextFormField(
                          width: 374,
                          focusNode: FocusNode(),
                          controller: controller.group196Controller,
                          hintText: "lbl_invite_a_friend".tr,
                          margin: getMargin(left: 20, top: 14, right: 20),
                          variant: TextFormFieldVariant.OutlineGray7001e,
                          fontStyle: TextFormFieldFontStyle.PoppinsMedium14,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 17, right: 16, bottom: 16),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgMail21X21)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(21.00),
                              minHeight: getSize(21.00))),
                      CustomTextFormField(
                          width: 374,
                          focusNode: FocusNode(),
                          controller: controller.group195Controller,
                          hintText: "lbl_get_help".tr,
                          margin: getMargin(left: 20, top: 14, right: 20),
                          variant: TextFormFieldVariant.OutlineGray7001e,
                          padding: TextFormFieldPadding.PaddingT22,
                          fontStyle: TextFormFieldFontStyle.PoppinsMedium14,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 17, right: 21, bottom: 16),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLocation21X10)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(21.00),
                              minHeight: getSize(21.00))),
                      CustomSearchView(
                          width: 374,
                          focusNode: FocusNode(),
                          controller: controller.group194Controller,
                          hintText: "lbl_sign_out".tr,
                          margin: getMargin(
                              left: 20, top: 14, right: 20, bottom: 20),
                          variant: SearchViewVariant.OutlineGray7001e,
                          padding: SearchViewPadding.PaddingT21,
                          fontStyle: SearchViewFontStyle.PoppinsMedium14,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 19, right: 17, bottom: 18),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgSearchRedA40018X18)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(18.00),
                              minHeight: getSize(18.00)))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
