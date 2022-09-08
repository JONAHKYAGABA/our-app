import '/core/app_export.dart';
import 'package:kyagaba_s_application4/presentation/home_page_screen/models/home_page_model.dart';

class HomePageController extends GetxController {
  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
