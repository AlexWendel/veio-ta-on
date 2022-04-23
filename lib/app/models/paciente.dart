import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hospital_maraba/app/models/user.dart';

class Paciente extends UserLocal {
  late String susNumber;
  late DocumentReference referenceDoc;

  Paciente({required this.susNumber}) {
    susNumber = susNumber;
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = super.toJson();
    json.addAll({"susNumber": susNumber});
    return json;
  }

  // factory Paciente.fromJson(Map<String, dynamic> json) => {
  //   uid = json["id"];
  //   nome = json["nome"];
  //   sobrenome = json["sobrenome"];
  //   cpf = json["cpf"];
  //   rg = json["rg"];
  //   telefone = json["telefone"];
  //   email = json["email"];
  //   susNumber = json["susNumber"];
  // }
}
