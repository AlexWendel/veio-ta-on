import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';

class LocalPartial {
  DocumentReference referenceDoc;
  LocalPartial({required this.referenceDoc});
}

class Local {
  String id;
  String nome;
  String? endereco;
  String? bairro;
  String? cidade;
  String? uf;
  String? referencia;
  Map<String, dynamic>? coordenadas;
  List<dynamic>? especialidades;

  Local(
      {required this.id,
      required this.nome,
      this.endereco,
      this.bairro,
      this.referencia,
      this.especialidades,
      this.uf,
      this.cidade,
      this.coordenadas});

  factory Local.fromJson(Map<String, dynamic> json) => Local(
        id: json["id"],
        nome: json["nome"],
        endereco: json["endereco"],
        bairro: json["bairro"],
        cidade: json["cidade"],
        uf: json["uf"],
        referencia: json["referencia"],
        especialidades:
            json["especialidades"], // TODO:INCLUDE FIREBASE ESPECIALIDADES
        // coordenadas: (json["coordenadas"]) => { var point = GeoPoint(); point.latitude= json["latitude"]; point.longitude = json["longitude"];return point}),
      );

  factory Local.fromSnapshot(Map<String, dynamic> snapshot) {
    return Local(
      id: snapshot["id"],
      nome: snapshot["nome"],
      endereco: snapshot["endereco"],
      bairro: snapshot["bairro"],
      cidade: snapshot["cidade"],
      uf: snapshot["uf"],
      referencia: snapshot["referencia"],
      especialidades:
          snapshot["especialidades"], // TODO:INCLUDE FIREBASE ESPECIALIDADES
      // coordenadas: (json["coordenadas"]) => { var point = GeoPoint(); point.latitude= json["latitude"]; point.longitude = json["longitude"];return point}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "nome": nome,
      "bairro": bairro,
      "cidade": cidade,
      "endereco": endereco,
      "especialidades": especialidades,
      "referencia": referencia,
      "uf": uf,
      "coordenadas": coordenadas
    };
  }
}
