// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Local _$$_LocalFromJson(Map<String, dynamic> json) => _$_Local(
      nome: json['nome'] as String,
      endereco: json['endereco'] as String,
      bairro: json['bairro'] as String,
      cidade: json['cidade'] as String,
      uf: json['uf'] as String,
      referencia: json['referencia'] as String,
      coordenadas: (json['coordenadas'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [0, 0],
      especialidades: (json['especialidades'] as List<dynamic>?)
              ?.map((e) => Especialidade.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Especialidade>[],
    );

Map<String, dynamic> _$$_LocalToJson(_$_Local instance) => <String, dynamic>{
      'nome': instance.nome,
      'endereco': instance.endereco,
      'bairro': instance.bairro,
      'cidade': instance.cidade,
      'uf': instance.uf,
      'referencia': instance.referencia,
      'coordenadas': instance.coordenadas,
      'especialidades': instance.especialidades,
    };
