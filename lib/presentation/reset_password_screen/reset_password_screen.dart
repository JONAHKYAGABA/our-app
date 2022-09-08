import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_button.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: getMargin(
                      left: 20,
                      top: 316,
                      right: 20,
                    ),
                    decoration: AppDecoration.fillGray51.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            left: 15,
                            top: 24,
                            bottom: 22,
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
                  ),
                  Container(
                    width: getHorizontalSize(
                      361.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 45,
                      right: 20,
                    ),
                    child: Text(
                      "msg_your_password_r".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsMedium18.copyWith(),
                    ),
                  ),
                  CustomButton(
                    width: 374,
                    text: "lbl_send".tr,
                    margin: getMargin(
                      left: 20,
                      top: 23,
                      right: 20,
                      bottom: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
