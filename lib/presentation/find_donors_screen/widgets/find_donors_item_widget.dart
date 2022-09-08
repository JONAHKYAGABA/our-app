import '../controller/find_donors_controller.dart';
import '../models/find_donors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class FindDonorsItemWidget extends StatelessWidget {
  FindDonorsItemWidget(this.findDonorsItemModelObj, {this.onTapDonor});

  FindDonorsItemModel findDonorsItemModelObj;

  var controller = Get.find<FindDonorsController>();

  VoidCallback? onTapDonor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDonor!();
      },
      child: Container(
        margin: getMargin(
          top: 12.5,
          bottom: 12.5,
        ),
        decoration: AppDecoration.outlineGray80020.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 14,
                top: 13,
                bottom: 13,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgRectangle24,
                  height: getSize(
                    85.00,
                  ),
                  width: getSize(
                    85.00,
                  ),
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 27,
                top: 33,
                bottom: 28,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      right: 10,
                    ),
                    child: Text(
                      "lbl_yasin_hossain".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16.copyWith(
                        letterSpacing: 0.32,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                      right: 8,
                      bottom: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 2,
                            top: 1,
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgLocation16X13,
                            height: getVerticalSize(
                              14.00,
                            ),
                            width: getHorizontalSize(
                              12.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 11,
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_mohammedpur_dh".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium12.copyWith(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: getVerticalSize(
                50.00,
              ),
              width: getHorizontalSize(
                35.00,
              ),
              margin: getMargin(
                left: 21,
                top: 31,
                right: 19,
                bottom: 30,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgVolume,
                      height: getVerticalSize(
                        50.00,
                      ),
                      width: getHorizontalSize(
                        35.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 5,
                        top: 12,
                        right: 10,
                        bottom: 12,
                      ),
                      child: Text(
                        "lbl_a".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium16WhiteA700.copyWith(),
                      ),
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
