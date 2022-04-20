// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agendamento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Agendamento _$$_AgendamentoFromJson(Map<String, dynamic> json) =>
    _$_Agendamento(
      id: json['id'] as String,
      paciente: Paciente.fromJson(json['paciente'] as Map<String, dynamic>),
      agendadoPor:
          Usuario.fromJson(json['agendadoPor'] as Map<String, dynamic>),
      agendadoPara: DateTime.parse(json['agendadoPara'] as String),
      agendadoEm: DateTime.parse(json['agendadoEm'] as String),
      local: Local.fromJson(json['local'] as Map<String, dynamic>),
      especialidade:
          Especialidade.fromJson(json['especialidade'] as Map<String, dynamic>),
      estadoAgendamento:
          $enumDecode(_$EstagioDoAgendamentoEnumMap, json['estadoAgendamento']),
      confirmado: json['confirmado'] as bool? ?? false,
      confirmadoPor: json['confirmadoPor'] == null
          ? null
          : Usuario.fromJson(json['confirmadoPor'] as Map<String, dynamic>),
      fezCheckin: json['fezCheckin'] as bool? ?? false,
      foiRemarcado: json['foiRemarcado'] as bool? ?? false,
      fezCheckinEm: json['fezCheckinEm'] == null
          ? null
          : DateTime.parse(json['fezCheckinEm'] as String),
      checkinFeitoPor: json['checkinFeitoPor'] == null
          ? null
          : Usuario.fromJson(json['checkinFeitoPor'] as Map<String, dynamic>),
      confirmadoEm: json['confirmadoEm'] == null
          ? null
          : DateTime.parse(json['confirmadoEm'] as String),
      remarcadoEm: json['remarcadoEm'] == null
          ? null
          : DateTime.parse(json['remarcadoEm'] as String),
    );

Map<String, dynamic> _$$_AgendamentoToJson(_$_Agendamento instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paciente': instance.paciente,
      'agendadoPor': instance.agendadoPor,
      'agendadoPara': instance.agendadoPara.toIso8601String(),
      'agendadoEm': instance.agendadoEm.toIso8601String(),
      'local': instance.local,
      'especialidade': instance.especialidade,
      'estadoAgendamento':
          _$EstagioDoAgendamentoEnumMap[instance.estadoAgendamento],
      'confirmado': instance.confirmado,
      'confirmadoPor': instance.confirmadoPor,
      'fezCheckin': instance.fezCheckin,
      'foiRemarcado': instance.foiRemarcado,
      'fezCheckinEm': instance.fezCheckinEm?.toIso8601String(),
      'checkinFeitoPor': instance.checkinFeitoPor,
      'confirmadoEm': instance.confirmadoEm?.toIso8601String(),
      'remarcadoEm': instance.remarcadoEm?.toIso8601String(),
    };

const _$EstagioDoAgendamentoEnumMap = {
  EstagioDoAgendamento.MARCADO: 'MARCADO',
  EstagioDoAgendamento.CONFIRMADO: 'CONFIRMADO',
  EstagioDoAgendamento.CHECKIN: 'CHECKIN',
  EstagioDoAgendamento.FINALIZADO: 'FINALIZADO',
};
