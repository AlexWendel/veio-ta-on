import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hospital_maraba/app/models/usuario.dart';

import 'local.dart';

class DataDisponivel {
  String? id;
  DocumentReference local;
  DocumentReference adicionadoPor;
  DateTime agendadoPara;
  bool disponivel;

  DataDisponivel(
      {this.id,
      required this.local,
      required this.adicionadoPor,
      required this.agendadoPara,
      required this.disponivel});

  factory DataDisponivel.fromJson(Map<String, dynamic> json) {
    print("fromJson");
    DataDisponivel dd = DataDisponivel(
        id: json['id'] ?? "",
        local: json["local"],
        adicionadoPor: json["adicionadoPor"],
        agendadoPara: (json["agendadoPara"] as Timestamp).toDate(),
        disponivel: json["disponivel"]);
    print(dd.disponivel);
    return dd;
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "local": local,
      "adicionadoPor": adicionadoPor,
      "agendadoPara": agendadoPara,
      "disponivel": disponivel
    };
  }
}
