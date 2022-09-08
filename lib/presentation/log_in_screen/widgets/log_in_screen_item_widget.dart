import '../controller/log_in_controller.dart';
import '../models/log_in_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class LogInScreenItemWidget extends StatelessWidget {
  LogInScreenItemWidget(this.logInScreenItemModelObj);

  LogInScreenItemModel logInScreenItemModelObj;

  var controller = Get.find<LogInController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      decoration: AppDecoration.fillGray51.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 27,
              top: 24,
              bottom: 25,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgMail,
              height: getVerticalSize(
                15.00,
              ),
              width: getHorizontalSize(
                21.00,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              53.00,
            ),
            width: getHorizontalSize(
              1.00,
            ),
            margin: getMargin(
              left: 21,
              top: 6,
              bottom: 6,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.bluegray100,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 17,
              top: 27,
              right: 52,
              bottom: 19,
            ),
            child: Text(
              "msg_fahimekan28_gma".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular18.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
