import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Padding(
                          padding: getPadding(left: 20, top: 120, right: 20),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgBloodtestrafi,
                              height: getVerticalSize(279.00),
                              width: getHorizontalSize(374.00))),
                      Padding(
                          padding: getPadding(left: 20, top: 73, right: 20),
                          child: Text("msg_post_a_blood_re".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24.copyWith())),
                      Padding(
                          padding: getPadding(left: 20, top: 52, right: 20),
                          child: Text("msg_request_for_blo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium20.copyWith())),
                      Padding(
                          padding: getPadding(left: 20, top: 99, right: 20),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgMenu,
                              height: getVerticalSize(10.00),
                              width: getHorizontalSize(71.00))),
                      Padding(
                          padding: getPadding(
                              left: 20, top: 151, right: 20, bottom: 42),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSkip();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_skip".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular20
                                                .copyWith()))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtNext();
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_next".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20RedA400
                                                .copyWith())))
                              ]))
                    ]))))));
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.logInScreen);
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.onboardingThreeScreen);
  }
}
