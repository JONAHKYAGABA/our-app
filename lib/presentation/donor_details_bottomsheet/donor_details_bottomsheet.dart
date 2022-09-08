import 'controller/donor_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';
import 'package:kyagaba_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DonorDetailsBottomsheet extends StatelessWidget {
  DonorDetailsBottomsheet(this.controller);

  DonorDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: double.infinity,
                decoration: AppDecoration.outlineGray8003f.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL50,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 104,
                          top: 85,
                          right: 104,
                        ),
                        child: Text(
                          "lbl_yiga_gilbert".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtPoppinsMedium22Bluegray901.copyWith(
                            letterSpacing: 0.44,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 12,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
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
                                  16.00,
                                ),
                                width: getHorizontalSize(
                                  13.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 9,
                                top: 3,
                              ),
                              child: Text(
                                "lbl_wakiso_uganda".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium14.copyWith(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 32,
                          right: 20,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgGroup33,
                          height: getVerticalSize(
                            31.00,
                          ),
                          width: getHorizontalSize(
                            248.00,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 16,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: getMargin(
                                bottom: 2,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_62".tr,
                                      style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "lbl_times_donated".tr,
                                      style: TextStyle(
                                        color: ColorConstant.gray600,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 2,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_blood_type2".tr,
                                      style: TextStyle(
                                        color: ColorConstant.gray600,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "lbl_ab2".tr,
                                      style: TextStyle(
                                        color: ColorConstant.redA400,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 52,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomTextFormField(
                              width: 158,
                              focusNode: FocusNode(),
                              controller: controller.callController,
                              hintText: "lbl_call_now".tr,
                              variant: TextFormFieldVariant.FillBluegray400,
                              shape: TextFormFieldShape.RoundedBorder10,
                              padding: TextFormFieldPadding.PaddingT18,
                              fontStyle: TextFormFieldFontStyle.PoppinsMedium16,
                              prefix: Container(
                                margin: getMargin(
                                  left: 24,
                                  top: 15,
                                  right: 18,
                                  bottom: 14,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgUser,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                minWidth: getSize(
                                  22.00,
                                ),
                                minHeight: getSize(
                                  22.00,
                                ),
                              ),
                            ),
                            CustomTextFormField(
                              width: 158,
                              focusNode: FocusNode(),
                              controller: controller.requestController,
                              hintText: "lbl_request".tr,
                              variant: TextFormFieldVariant.FillRedA400,
                              shape: TextFormFieldShape.RoundedBorder10,
                              padding: TextFormFieldPadding.PaddingT20,
                              fontStyle: TextFormFieldFontStyle.PoppinsMedium20,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                margin: getMargin(
                                  left: 22,
                                  top: 15,
                                  right: 21,
                                  bottom: 15,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgReply,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                minWidth: getSize(
                                  21.00,
                                ),
                                minHeight: getSize(
                                  21.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          277.00,
                        ),
                        width: getHorizontalSize(
                          374.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 50,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle35,
                                  height: getVerticalSize(
                                    277.00,
                                  ),
                                  width: getHorizontalSize(
                                    374.00,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: getHorizontalSize(
                                  262.00,
                                ),
                                margin: getMargin(
                                  left: 19,
                                  top: 21,
                                  right: 19,
                                  bottom: 21,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: getSize(
                                          141.00,
                                        ),
                                        width: getSize(
                                          141.00,
                                        ),
                                        margin: getMargin(
                                          right: 10,
                                        ),
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.redA4000c,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                70.50,
                                              ),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    all: 40,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation30X19,
                                                    height: getVerticalSize(
                                                      30.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      19.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 49,
                                      width: 49,
                                      margin: getMargin(
                                        left: 10,
                                        top: 38,
                                      ),
                                      padding: IconButtonPadding.PaddingAll8,
                                      alignment: Alignment.centerRight,
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgOffer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
