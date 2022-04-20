import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';

part 'local.freezed.dart';
part 'local.g.dart';

@freezed
class Local with _$Local {
  factory Local(
      {required String nome,
      required String endereco,
      required String bairro,
      required String cidade,
      required String uf,
      required String referencia,
      @Default([0, 0]) List<int> coordenadas,
      @Default(<Especialidade>[]) List<Especialidade> especialidades}) = _Local;

  factory Local.fromJson(Map<String, dynamic> json) => _$LocalFromJson(json);
}
