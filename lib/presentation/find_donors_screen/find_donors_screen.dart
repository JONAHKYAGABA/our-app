import '../find_donors_screen/widgets/find_donors_item_widget.dart';
import 'controller/find_donors_controller.dart';
import 'models/find_donors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_icon_button.dart';
import 'package:kyagaba_s_application4/presentation/donor_details_bottomsheet/donor_details_bottomsheet.dart';
import 'package:kyagaba_s_application4/presentation/donor_details_bottomsheet/controller/donor_details_controller.dart';

class FindDonorsScreen extends GetWidget<FindDonorsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(left: 20, top: 38, right: 20),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: size.width,
                                  margin: getMargin(right: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomIconButton(
                                            height: 44,
                                            width: 44,
                                            variant:
                                                IconButtonVariant.FillGray100,
                                            onTap: () {
                                              onTapBtntf();
                                            },
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftBluegray902)),
                                        Padding(
                                            padding: getPadding(
                                                left: 77, top: 9, bottom: 12),
                                            child: Text("lbl_find_donors".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium22Bluegray901
                                                    .copyWith(
                                                        letterSpacing: 0.44)))
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 24),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  decoration: AppDecoration
                                                      .outlineBluegray90020
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 40,
                                                                top: 15,
                                                                bottom: 14),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSearchGray40019X19,
                                                                height: getSize(
                                                                    19.00),
                                                                width: getSize(
                                                                    19.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 34,
                                                                top: 14,
                                                                right: 157,
                                                                bottom: 15),
                                                            child: Text(
                                                                "lbl_search".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium18Bluegray101
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.36)))
                                                      ])),
                                              CustomIconButton(
                                                  height: 48,
                                                  width: 48,
                                                  padding: IconButtonPadding
                                                      .PaddingAll8,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSettings48X48))
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 36),
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .findDonorsModelObj
                                                    .value
                                                    .findDonorsItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  FindDonorsItemModel model =
                                                      controller
                                                              .findDonorsModelObj
                                                              .value
                                                              .findDonorsItemList[
                                                          index];
                                                  return FindDonorsItemWidget(
                                                      model,
                                                      onTapDonor: onTapDonor);
                                                })))
                                      ]))
                            ]))))));
  }

  onTapDonor() {
    Get.bottomSheet(DonorDetailsBottomsheet(Get.put(DonorDetailsController())),
        isScrollControlled: true);
  }

  onTapBtntf() {
    Get.back();
  }
}
