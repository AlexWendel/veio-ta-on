// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/models/paciente.dart';

class AgendamentosController extends GetxController {
  final count = 0.obs;
  Agendamento agendarConsulta(
      Paciente pacienteRef, Local localRef, DateTime agendadoEm) {
// [Consulta]
// - id_consulta (unique_id)
// - paciente (pacienteRef)
// - medico (medicoRef)
// - agendada_por (usuarioRef)
// - agendado_em (datetime)
// - local (localRef)
// - horario (datetime)
// - fez_checkin (bool)
// - checkin_por (gerenciadorRef)
// - fez_checkin_em (datetime)
// - confirmacao (bool)
// - confirmado_em (datetime)
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
