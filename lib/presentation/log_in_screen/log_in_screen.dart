import '../log_in_screen/widgets/log_in_screen_item_widget.dart';
import 'controller/log_in_controller.dart';
import 'models/log_in_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_button.dart';

class LogInScreen extends GetWidget<LogInController> {
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
                          padding: getPadding(left: 20, top: 66, right: 20),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgLogoRedA400102X68,
                              height: getVerticalSize(102.00),
                              width: getHorizontalSize(68.00))),
                      Container(
                          margin: getMargin(left: 20, top: 13, right: 20),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_dare".tr,
                                    style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(22),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "lbl_to".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray700,
                                        fontSize: getFontSize(22),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "lbl_donate".tr,
                                    style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(22),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(left: 20, top: 172, right: 20),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.logInModelObj.value
                                  .logInScreenItemList.length,
                              itemBuilder: (context, index) {
                                LogInScreenItemModel model = controller
                                    .logInModelObj
                                    .value
                                    .logInScreenItemList[index];
                                return LogInScreenItemWidget(model);
                              }))),
                      CustomButton(
                          width: 374,
                          text: "lbl_log_in".tr,
                          margin: getMargin(left: 20, top: 85, right: 20),
                          onTap: onTapBtnLogin),
                      Padding(
                          padding: getPadding(left: 20, top: 21, right: 20),
                          child: Text("msg_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular18RedA400
                                  .copyWith())),
                      Container(
                          margin: getMargin(
                              left: 20, top: 135, right: 20, bottom: 20),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_d".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray600,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "msg_on_t_have_an_ac".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray600,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "lbl_register_now".tr,
                                    style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "lbl2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray600,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left))
                    ]))))));
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.homePageScreen);
  }
}
