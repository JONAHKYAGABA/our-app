import '../controller/donation_request_controller.dart';
import 'package:get/get.dart';

class DonationRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DonationRequestController());
  }
}
