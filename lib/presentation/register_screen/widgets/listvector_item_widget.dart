import '../controller/register_controller.dart';
import '../models/listvector_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ListvectorItemWidget extends StatelessWidget {
  ListvectorItemWidget(this.listvectorItemModelObj);

  ListvectorItemModel listvectorItemModelObj;

  var controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 9.0,
        bottom: 9.0,
      ),
      decoration: AppDecoration.fillGray51.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 29,
              top: 22,
              bottom: 17,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgVector,
              height: getVerticalSize(
                18.00,
              ),
              width: getHorizontalSize(
                17.00,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              59.00,
            ),
            width: getHorizontalSize(
              1.00,
            ),
            margin: getMargin(
              left: 18,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray300,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 23,
              right: 186,
              bottom: 17,
            ),
            child: Text(
              "lbl_fahim_ekan".tr,
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
