import '../controller/find_donors_controller.dart';
import 'package:get/get.dart';

class FindDonorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindDonorsController());
  }
}
