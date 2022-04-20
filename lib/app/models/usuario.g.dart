// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Usuario _$$_UsuarioFromJson(Map<String, dynamic> json) => _$_Usuario(
      id: json['id'] as String,
      nome: json['nome'] as String,
      sobrenome: json['sobrenome'] as String,
      rg: json['rg'] as String,
      cpf: json['cpf'] as String,
      telefone: json['telefone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_UsuarioToJson(_$_Usuario instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'sobrenome': instance.sobrenome,
      'rg': instance.rg,
      'cpf': instance.cpf,
      'telefone': instance.telefone,
      'email': instance.email,
    };
