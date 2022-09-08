import '../register_screen/widgets/listvector_item_widget.dart';
import 'controller/register_controller.dart';
import 'models/listvector_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_button.dart';

class RegisterScreen extends GetWidget<RegisterController> {
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
                          padding: getPadding(left: 20, top: 52, right: 20),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.registerModelObj.value
                                  .listvectorItemList.length,
                              itemBuilder: (context, index) {
                                ListvectorItemModel model = controller
                                    .registerModelObj
                                    .value
                                    .listvectorItemList[index];
                                return ListvectorItemWidget(model);
                              }))),
                      CustomButton(
                          width: 374,
                          text: "lbl_register".tr,
                          margin: getMargin(left: 20, top: 53, right: 20),
                          onTap: onTapBtnRegister),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlreadyhavean();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 20, top: 32, right: 20, bottom: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_already".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "msg_have_an_account".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "lbl_log_in2".tr,
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
                                  textAlign: TextAlign.left)))
                    ]))))));
  }

  onTapBtnRegister() {
    Get.toNamed(AppRoutes.logInScreen);
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.logInScreen);
  }
}
