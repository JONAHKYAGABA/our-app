import '../home_page_screen/widgets/home_page_item_widget.dart';
import '../home_page_screen/widgets/sliderbloodone_item_widget.dart';
import 'controller/home_page_controller.dart';
import 'models/home_page_item_model.dart';
import 'models/sliderbloodone_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kyagaba_s_application4/core/app_export.dart';
import 'package:kyagaba_s_application4/widgets/custom_floating_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: size.width,
                            margin: getMargin(
                              left: 20,
                              top: 46,
                              right: 19,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 3,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgGrid,
                                      height: getSize(
                                        27.00,
                                      ),
                                      width: getSize(
                                        27.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    right: 1,
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgNotification,
                                    height: getVerticalSize(
                                      27.00,
                                    ),
                                    width: getHorizontalSize(
                                      26.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              211.00,
                            ),
                            width: getHorizontalSize(
                              359.00,
                            ),
                            margin: getMargin(
                              left: 20,
                              top: 29,
                              right: 20,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Obx(
                                  () => CarouselSlider.builder(
                                    options: CarouselOptions(
                                      height: getVerticalSize(
                                        211.00,
                                      ),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      },
                                    ),
                                    itemCount: controller.homePageModelObj.value
                                        .sliderbloodoneItemList.length,
                                    itemBuilder: (context, index, realIndex) {
                                      SliderbloodoneItemModel model = controller
                                          .homePageModelObj
                                          .value
                                          .sliderbloodoneItemList[index];
                                      return SliderbloodoneItemWidget(
                                        model,
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Obx(
                                    () => Container(
                                      height: getVerticalSize(
                                        10.00,
                                      ),
                                      margin: getMargin(
                                        left: 137,
                                        top: 10,
                                        right: 137,
                                      ),
                                      child: AnimatedSmoothIndicator(
                                        activeIndex:
                                            controller.silderIndex.value,
                                        count: controller.homePageModelObj.value
                                            .sliderbloodoneItemList.length,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                          spacing: 10,
                                          activeDotColor: ColorConstant.redA400,
                                          dotColor: ColorConstant.gray301,
                                          dotHeight: getVerticalSize(
                                            10.00,
                                          ),
                                          dotWidth: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 39,
                              right: 20,
                            ),
                            child: Obx(
                              () => GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(
                                    102.00,
                                  ),
                                  crossAxisCount: 3,
                                  mainAxisSpacing: getHorizontalSize(
                                    20.38,
                                  ),
                                  crossAxisSpacing: getHorizontalSize(
                                    20.38,
                                  ),
                                ),
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.homePageModelObj.value
                                    .homePageItemList.length,
                                itemBuilder: (context, index) {
                                  HomePageItemModel model = controller
                                      .homePageModelObj
                                      .value
                                      .homePageItemList[index];
                                  return HomePageItemWidget(
                                    model,
                                    onTapFindDonors: onTapFindDonors,
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              79.00,
                            ),
                            width: getHorizontalSize(
                              374.00,
                            ),
                            margin: getMargin(
                              left: 20,
                              top: 228,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgSubtract,
                                      height: getVerticalSize(
                                        55.00,
                                      ),
                                      width: getHorizontalSize(
                                        374.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 9,
                                      top: 10,
                                      right: 10,
                                      bottom: 7,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgSearchGray400,
                                      height: getVerticalSize(
                                        32.00,
                                      ),
                                      width: getHorizontalSize(
                                        354.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomFloatingButton(
                    height: 48,
                    width: 48,
                    margin: getMargin(
                      left: 183,
                      top: 41,
                      right: 183,
                      bottom: 41,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgFire48X48,
                      height: getVerticalSize(
                        24.00,
                      ),
                      width: getHorizontalSize(
                        24.00,
                      ),
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
