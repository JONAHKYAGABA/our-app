import 'controller/request_successful_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class RequestSuccessfulDialog extends StatelessWidget {
  RequestSuccessfulDialog(this.controller);

  RequestSuccessfulController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: getMargin(
              left: 20,
              top: 201,
              right: 20,
              bottom: 20,
            ),
            decoration: AppDecoration.outlineGray8000c.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 70,
                    top: 22,
                    right: 70,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCompletedpana,
                    height: getVerticalSize(
                      257.00,
                    ),
                    width: getHorizontalSize(
                      230.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    187.00,
                  ),
                  margin: getMargin(
                    left: 70,
                    top: 65,
                    right: 70,
                  ),
                  child: Text(
                    "msg_blood_is_succes".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPoppinsMedium18Bluegray9007f.copyWith(
                      letterSpacing: 0.18,
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 45,
                  width: 45,
                  margin: getMargin(
                    left: 70,
                    top: 34,
                    right: 70,
                    bottom: 23,
                  ),
                  shape: IconButtonShape.RoundedBorder22,
                  child: CommonImageView(
                    svgPath: ImageConstant.imgArrowright,
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
