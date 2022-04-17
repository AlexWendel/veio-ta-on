// ignore_for_file: unnecessary_this

import 'package:hospital_maraba/app/models/exame.dart';
import 'package:hospital_maraba/app/models/local.dart';

import 'data.dart';

class Agendamento {
// ''[Consulta]
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
// - confirmado_em (datetime)''
  Agendamento.fromJson(Map<String, Object?> json, String uidConsulta)
      : this(
            agendadoEm: json['agendadoEm'] as DateTime,
            agendadoPorIdUserRef: json['agendadoPor'] as String,
            checkinPorIdUserRef: json['checkinPor'] as String,
            confirmado: json['confirmado'] as bool,
            confirmadoEm: json['confirmadoEm'] as DateTime,
            fezCheckin: json['fezCheckIn'] as bool,
            horario: json['horario'] as DateTime,
            idConsulta: uidConsulta,
            idMedicoRef: json['idMedico'] as String,
            idPacienteRef: json['idPacienteRef'] as String,
            local: json['local'] as String);
  Agendamento(
      {this.idConsulta = "",
      this.idPacienteRef = "",
      this.idMedicoRef = "",
      this.agendadoPorIdUserRef = "",
      DateTime? agendadoEm,
      this.local = "",
      DateTime? horario,
      this.checkinPorIdUserRef = "",
      this.fezCheckin = false,
      this.confirmado = false,
      DateTime? confirmadoEm})
      : this.agendadoEm = agendadoEm ?? DateTime.utc(2022),
        this.horario = horario ?? DateTime.utc(2022),
        this.confirmadoEm = confirmadoEm ?? DateTime.utc(2022);
  String idConsulta;
  String idPacienteRef;
  String idMedicoRef;
  String agendadoPorIdUserRef;
  DateTime agendadoEm;
  String local;
  DateTime horario;
  String checkinPorIdUserRef;
  bool fezCheckin;
  bool confirmado;
  DateTime confirmadoEm;
  Map<String, Object?> toJson() {
    return {
      'agendadoEm': agendadoEm,
      'agendadoPor': agendadoPorIdUserRef,
      'checkinPor': checkinPorIdUserRef,
      'confirmado': confirmado,
      'confirmadoEm': confirmadoEm,
      'fezCheckIn': fezCheckin,
      'horario': horario,
      'idMedico': idMedicoRef,
      'idPacienteRef': idPacienteRef,
      'local': local,
    };
  }
}
