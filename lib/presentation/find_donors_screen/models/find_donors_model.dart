import 'package:get/get.dart';
import 'find_donors_item_model.dart';

class FindDonorsModel {
  RxList<FindDonorsItemModel> findDonorsItemList =
      RxList.filled(6, FindDonorsItemModel());
}
