import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_button.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
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
                      Padding(
                          padding: getPadding(left: 20, top: 109, right: 20),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgLogoRedA400,
                              height: getVerticalSize(187.00),
                              width: getHorizontalSize(125.00))),
                      Padding(
                          padding: getPadding(left: 20, top: 36, right: 20),
                          child: Text("lbl_ugblood_donate".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium30.copyWith())),
                      Container(
                          width: getHorizontalSize(370.00),
                          margin: getMargin(left: 20, top: 59, right: 20),
                          child: Text("msg_you_can_donate".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsMedium20.copyWith())),
                      CustomButton(
                          width: 374,
                          text: "lbl_log_in".tr,
                          margin: getMargin(left: 20, top: 96, right: 20),
                          variant: ButtonVariant.OutlineRedA400,
                          fontStyle: ButtonFontStyle.PoppinsMedium22,
                          onTap: onTapBtnLogin),
                      CustomButton(
                          width: 374,
                          text: "lbl_register".tr,
                          margin: getMargin(
                              left: 20, top: 21, right: 20, bottom: 20),
                          onTap: onTapBtnRegister)
                    ]))))));
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.logInScreen);
  }

  onTapBtnRegister() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
