import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
class Usuario with _$Usuario {
  factory Usuario({
    required String id,
    required String nome,
    required String sobrenome,
    required String rg,
    required String cpf,
    String? telefone,
    String? email,
  }) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);
}
