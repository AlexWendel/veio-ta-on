import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class Usuario {
  DocumentReference? referenceDoc;
  String id;
  String nome;
  String sobrenome;
  String rg;
  String cpf;
  String? telefone;
  String? email;
  String? susCard;
  DateTime registradoEm;

  Usuario(
      {required this.id,
      required this.nome,
      required this.sobrenome,
      required this.rg,
      required this.cpf,
      required this.registradoEm,
      this.telefone,
      this.email,
      this.susCard});

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
      id: json["id"] ?? "",
      nome: json["nome"],
      cpf: json["cpf"],
      rg: json["rg"],
      sobrenome: json["sobrenome"],
      registradoEm: (json["registradoEm"] as Timestamp).toDate());

  factory Usuario.fromDocument(Map<String, dynamic> json) => Usuario(
      id: json["id"] ?? "",
      nome: json["nome"],
      cpf: json["cpf"],
      rg: json["rg"],
      sobrenome: json["sobrenome"],
      registradoEm: (json["registradoEm"] as Timestamp).toDate());

  // Usuario.onlyReference({required this.referenceDoc});
}
