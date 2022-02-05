import 'package:get/get.dart';

import '../controllers/agendamentos_controller.dart';

class AgendamentosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgendamentosController>(
      () => AgendamentosController(),
    );
  }
}
