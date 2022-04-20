import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_maraba/app/models/user.dart';

// part 'paciente.freezed.dart';
// part 'paciente.g.dart';

class Paciente extends UserLocal {
  late String susNumber;

  Paciente({required this.susNumber});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({"susNumber": susNumber});
    return json;
  }

  Paciente.fromJson(Map<String, dynamic> json) {
    uid = json["id"];
    nome = json["nome"];
    sobrenome = json["sobrenome"];
    cpf = json["cpf"];
    rg = json["rg"];
    telefone = json["telefone"];
    email = json["email"];
    susNumber = json["susNumber"];
  }
}
