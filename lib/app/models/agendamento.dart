import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/models/paciente.dart';
import 'package:hospital_maraba/app/models/usuario.dart';

part 'agendamento.freezed.dart';
part 'agendamento.g.dart';

enum EstagioDoAgendamento {
  MARCADO,
  CONFIRMADO,
  CHECKIN,
  FINALIZADO,
}

@freezed
class Agendamento with _$Agendamento {
  factory Agendamento({
    required String id,
    required Paciente paciente,
    required Usuario agendadoPor,
    required DateTime agendadoPara,
    required DateTime agendadoEm,
    required Local local,
    required Especialidade especialidade,
    required EstagioDoAgendamento estadoAgendamento,
    @Default(false) bool confirmado,
    @Default(null) Usuario? confirmadoPor,
    @Default(false) bool fezCheckin,
    @Default(false) bool foiRemarcado,
    DateTime? fezCheckinEm,
    Usuario? checkinFeitoPor,
    DateTime? confirmadoEm,
    DateTime? remarcadoEm,
  }) = _Agendamento;

  factory Agendamento.fromJson(Map<String, dynamic> json) =>
      _$AgendamentoFromJson(json);
}
