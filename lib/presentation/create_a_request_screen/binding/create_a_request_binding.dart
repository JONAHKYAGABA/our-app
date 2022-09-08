import '../controller/create_a_request_controller.dart';
import 'package:get/get.dart';

class CreateARequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateARequestController());
  }
}
