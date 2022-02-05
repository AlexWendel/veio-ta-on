import 'package:get/get.dart';

import '../controllers/dashboar_page_controller.dart';

class DashboarPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboarPageController>(
      () => DashboarPageController(),
    );
  }
}
