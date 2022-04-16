// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/models/paciente.dart';

class AgendamentosController extends GetxController {
  final count = 0.obs;

  Agendamento cancelarConsulta(
      Paciente pacinteRef, Agendamento agendamentoRef) {
    // Checar se o agendamento existe
    // Verificar se o agendamento ainda está no período válido de cancelamento
    // Criar o documento no firebase
    // Retornar a referencia ao documento do firebase
    return Agendamento();
  }

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
}
