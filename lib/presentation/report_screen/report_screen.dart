import '../report_screen/widgets/report_item_widget.dart';
import 'controller/report_controller.dart';
import 'models/report_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';

class ReportScreen extends GetWidget<ReportController> {
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
                                      left: 20, top: 38, right: 20, bottom: 20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(right: 10),
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
                                                              top: 13,
                                                              bottom: 8),
                                                          child: Text(
                                                              "lbl_report".tr,
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
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 17,
                                                    top: 34,
                                                    right: 17),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      top: 1,
                                                                      right:
                                                                          31),
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
                                                                    CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgLocation16X13,
                                                                        height: getVerticalSize(
                                                                            16.00),
                                                                        width: getHorizontalSize(
                                                                            13.00)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                12,
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_reseach_center"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium14.copyWith()))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 13),
                                                              child: Text(
                                                                  "msg_dhaka_medical_c"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium14
                                                                      .copyWith())))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 43,
                                                    right: 17),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup44,
                                                    height:
                                                        getVerticalSize(263.00),
                                                    width: getHorizontalSize(
                                                        275.00)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(top: 52),
                                                child: Obx(() =>
                                                    ListView.builder(
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        shrinkWrap: true,
                                                        itemCount: controller
                                                            .reportModelObj
                                                            .value
                                                            .reportItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ReportItemModel
                                                              model = controller
                                                                  .reportModelObj
                                                                  .value
                                                                  .reportItemList[index];
                                                          return ReportItemWidget(
                                                              model);
                                                        })))),
                                        CustomButton(
                                            width: 188,
                                            text: "lbl_my_report".tr,
                                            margin: getMargin(
                                                left: 17, top: 72, right: 17),
                                            shape: ButtonShape.CircleBorder22,
                                            padding: ButtonPadding.PaddingAll11,
                                            alignment: Alignment.center)
                                      ])))
                        ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
