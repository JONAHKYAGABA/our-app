import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
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
                          padding: getPadding(left: 22, top: 161, right: 22),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgBloodtestbro,
                              height: getVerticalSize(193.00),
                              width: getHorizontalSize(280.00))),
                      Padding(
                          padding: getPadding(left: 22, top: 114, right: 22),
                          child: Text("msg_find_blood_dono".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24.copyWith())),
                      Container(
                          width: getHorizontalSize(297.00),
                          margin: getMargin(left: 22, top: 56, right: 22),
                          child: Text("msg_locate_a_blood".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsMedium20.copyWith())),
                      Padding(
                          padding: getPadding(left: 22, top: 37, right: 22),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgMenu,
                              height: getVerticalSize(10.00),
                              width: getHorizontalSize(71.00))),
                      Padding(
                          padding: getPadding(
                              left: 22, top: 151, right: 20, bottom: 42),
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
    Get.toNamed(AppRoutes.onboardingTwoScreen);
  }
}
