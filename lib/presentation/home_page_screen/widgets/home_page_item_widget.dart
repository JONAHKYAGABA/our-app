import '../controller/home_page_controller.dart';
import '../models/home_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class HomePageItemWidget extends StatelessWidget {
  HomePageItemWidget(this.homePageItemModelObj, {this.onTapFindDonors});

  HomePageItemModel homePageItemModelObj;

  var controller = Get.find<HomePageController>();

  VoidCallback? onTapFindDonors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFindDonors!();
      },
      child: Container(
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
                left: 13,
                top: 19,
                right: 13,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgSearch,
                height: getVerticalSize(
                  29.00,
                ),
                width: getHorizontalSize(
                  31.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 13,
                top: 21,
                right: 13,
                bottom: 17,
              ),
              child: Text(
                "lbl_find_donors".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium14.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
