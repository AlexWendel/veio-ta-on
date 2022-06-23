import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hospital_maraba/app/models/usuario.dart';

enum EstagioDoAgendamento {
  marcado,
  confirmado,
  checkin,
  finalizado,
  expirado,
}

class Agendamento {
  DocumentReference? referenceDoc;

  String? id;
  dynamic paciente;
  dynamic agendadoPor;
  DateTime agendadoPara;
  DateTime agendadoEm;

  dynamic local;
  dynamic especialidade;
  EstagioDoAgendamento estadoAgendamento;
  DocumentReference? referenciaHorario;

  bool confirmado = false;
  Usuario? confirmadoPor;
  bool fezCheckin;
  bool foiRemarcado;
  DateTime? fezCheckinEm;
  Usuario? checkinFeitoPor;
  DateTime? confirmadoEm;
  DateTime? remarcadoEm;

  Agendamento(
      {this.id,
      required this.paciente,
      required this.local,
      required this.agendadoPara,
      required this.agendadoEm,
      required this.agendadoPor,
      required this.especialidade,
      required this.estadoAgendamento,
      this.referenciaHorario, // TODO: Botar referencia de Horário como required
      this.confirmado = false,
      this.confirmadoEm,
      this.confirmadoPor,
      this.fezCheckin = false,
      this.fezCheckinEm,
      this.checkinFeitoPor,
      this.foiRemarcado = false,
      this.remarcadoEm});

  factory Agendamento.fromJson(Map<String, dynamic> json) => Agendamento(
      id: json["id"] ?? "",
      paciente: json["paciente"],
      local: json["local"],
      agendadoPara: (json["agendadoPara"] as Timestamp).toDate(),
      agendadoEm: (json["agendadoPara"] as Timestamp).toDate(),
      agendadoPor: json["agendadoPor"],
      especialidade: json["especialidade"],
      estadoAgendamento: EstagioDoAgendamento.values[json["estadoAgendamento"]]
      // referenciaHorario: json["referenciaHorario"]
      );

  factory Agendamento.fromDocument(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      Agendamento(
          id: document["id"],
          paciente: document["paciente"] as DocumentReference,
          local: document["local"] as DocumentReference,
          agendadoPara: (document["agendadoPara"] as Timestamp).toDate(),
          agendadoEm: (document["agendadoPara"] as Timestamp).toDate(),
          agendadoPor: document["agendadoPor"] as DocumentReference,
          especialidade: document["especialidade"] as DocumentReference,
          estadoAgendamento:
              EstagioDoAgendamento.values[document["estadoAgendamento"]]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "paciente": paciente,
        "local": local,
        "agendadoPara": agendadoPara,
        "agendadoEm": agendadoEm,
        "agendadoPor": agendadoPor,
        "especialidade": especialidade,
        "estadoAgendamento": estadoAgendamento.index,
        "referenciaHorario": referenciaHorario,
        "confirmado": confirmado,
        "confirmadoEm": confirmadoEm,
        "confirmadoPor": confirmadoPor,
        "fezCheckin": fezCheckin,
        "checkinFeitoPor": checkinFeitoPor,
        "foiRemarcado": foiRemarcado,
        "remarcadoEm": remarcadoEm
      };
}
