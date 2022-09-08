import 'controller/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_search_view.dart';

class MapScreen extends GetWidget<MapController> {
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
                              alignment: Alignment.topCenter,
                              child: Container(
                                  margin: getMargin(
                                      left: 20, top: 38, right: 20, bottom: 38),
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
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                      height: 44,
                                                      width: 44,
                                                      variant: IconButtonVariant
                                                          .FillGray100,
                                                      onTap: () {
                                                        onTapBtntf();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleftBluegray902)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 63,
                                                          top: 12,
                                                          bottom: 9),
                                                      child: Text(
                                                          "lbl_nearby_events"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium22Bluegray901
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.44)))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomSearchView(
                                                      width: 315,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .group215Controller,
                                                      hintText: "lbl_search".tr,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 21,
                                                              top: 15,
                                                              right: 22,
                                                              bottom: 14),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgSearchGray40019X19)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              minWidth: getSize(
                                                                  19.00),
                                                              minHeight:
                                                                  getSize(
                                                                      19.00))),
                                                  CustomIconButton(
                                                      height: 48,
                                                      width: 48,
                                                      padding: IconButtonPadding
                                                          .PaddingAll8,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgSettings48X48))
                                                ]))
                                      ])))
                        ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
