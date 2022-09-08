import '../controller/assistant_controller.dart';
import 'package:get/get.dart';

class AssistantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssistantController());
  }
}
