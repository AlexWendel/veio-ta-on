import 'package:get/get.dart';

import '../controllers/novo_agendamento_controller.dart';

class NovoAgendamentoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NovoAgendamentoController>(
      () => NovoAgendamentoController(),
    );
  }
}
