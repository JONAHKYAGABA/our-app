import '../controller/report_controller.dart';
import '../models/report_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ReportItemWidget extends StatelessWidget {
  ReportItemWidget(this.reportItemModelObj);

  ReportItemModel reportItemModelObj;

  var controller = Get.find<ReportController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          top: 13.5,
          bottom: 13.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: getMargin(
                      left: 21,
                      top: 19,
                      right: 19,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_6".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray901,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_mmol_l".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray901,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 21,
                      top: 15,
                      right: 21,
                      bottom: 13,
                    ),
                    child: Text(
                      "lbl_glucose".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Gray400.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 14,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: getMargin(
                      left: 9,
                      top: 19,
                      right: 8,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_6_2".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray901,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_mmol_l".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray901,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 11,
                      top: 15,
                      right: 11,
                      bottom: 13,
                    ),
                    child: Text(
                      "lbl_cholesterol".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Gray400.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 14,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 19,
                      right: 15,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_12".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray901,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_mmol_l".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray901,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                      top: 14,
                      right: 15,
                      bottom: 14,
                    ),
                    child: Text(
                      "lbl_bilirubin".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Gray400.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
