import 'package:get/get.dart';
import 'sliderbloodone_item_model.dart';
import 'home_page_item_model.dart';

class HomePageModel {
  RxList<SliderbloodoneItemModel> sliderbloodoneItemList =
      RxList.filled(1, SliderbloodoneItemModel());

  RxList<HomePageItemModel> homePageItemList =
      RxList.filled(6, HomePageItemModel());
}
