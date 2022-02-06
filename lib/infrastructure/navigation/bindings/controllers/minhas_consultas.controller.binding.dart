import 'package:get/get.dart';

import '../../../../app/modules/agendamentos/minhas_consultas/controllers/minhas_consultas.controller.dart';

class MinhasConsultasControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MinhasConsultasController>(
      () => MinhasConsultasController(),
    );
  }
}
