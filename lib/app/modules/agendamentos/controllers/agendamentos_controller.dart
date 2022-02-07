import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';

class AgendamentosController extends GetxController {
  //TODO: Implement AgendamentosController

  final count = 0.obs;
  final agendamento = Rx<Agendamento>;

  final hilightColor = Get.theme.highlightColor.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  setHilightColor(color) {
    hilightColor.value = color;
  }

  void createAgendamentoModel() {}
}
