import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hospital_maraba/app/models/usuario.dart';

import 'local.dart';

class Data_disponivel {
  String? id;
  Local local;
  Usuario adicionadoPor;
  DateTime agendadoPara;
  bool disponivel;

  Data_disponivel(
      {this.id,
      required this.local,
      required this.adicionadoPor,
      required this.agendadoPara,
      required this.disponivel});

  factory Data_disponivel.fromJson(Map<String, dynamic> json) =>
      Data_disponivel(
          id: json['id'],
          local: json['local'],
          adicionadoPor: json['adicionadoPor'],
          agendadoPara: (json['agendadoPara'] as Timestamp).toDate(),
          disponivel: json['disponivel']);

  Map<String, dynamic> toJson() => {
        "id": id,
        "local": local,
        "adicionadoPor": adicionadoPor,
        "agendadoPara": agendadoPara,
        "disponivel": disponivel
      };
}
