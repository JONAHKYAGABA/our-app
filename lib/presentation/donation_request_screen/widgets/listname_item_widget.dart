import '../controller/donation_request_controller.dart';
import '../models/listname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatelessWidget {
  ListnameItemWidget(this.listnameItemModelObj);

  ListnameItemModel listnameItemModelObj;

  var controller = Get.find<DonationRequestController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      decoration: AppDecoration.outlineGray80019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 24,
              top: 13,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 1,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14.copyWith(
                            letterSpacing: 0.84,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 1,
                          top: 7,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_amir_hamza".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtPoppinsMedium14Bluegray901.copyWith(
                            letterSpacing: 0.70,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 14,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_location".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14.copyWith(
                            letterSpacing: 0.84,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                        ),
                        child: Text(
                          "msg_hertford_britis".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtPoppinsMedium14Bluegray901.copyWith(
                            letterSpacing: 0.70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    55.00,
                  ),
                  width: getHorizontalSize(
                    38.00,
                  ),
                  margin: getMargin(
                    top: 6,
                    bottom: 27,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          svgPath: ImageConstant.imgVolume,
                          height: getVerticalSize(
                            55.00,
                          ),
                          width: getHorizontalSize(
                            38.00,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: getPadding(
                            left: 10,
                            top: 10,
                            right: 5,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_b".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtPoppinsMedium22WhiteA700.copyWith(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 14,
              right: 16,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_5_min_ago".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium13.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_donate2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium18RedA400.copyWith(
                      letterSpacing: 0.81,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
