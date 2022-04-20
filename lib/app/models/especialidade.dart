import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'especialidade.freezed.dart';
part 'especialidade.g.dart';

@freezed
class Especialidade with _$Especialidade {
  const factory Especialidade(
      {required String id,
      required String nome,
      required String descricao,
      required String nomeMedicoEspecialista}) = _Especialidade;

  factory Especialidade.fromJson(Map<String, dynamic> json) =>
      _$EspecialidadeFromJson(json);
}
