import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';

class SingInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingInController>(
      () => SingInController(),
    );
  }
}
