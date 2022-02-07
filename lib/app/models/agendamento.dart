import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Agendamento {
  String paciente;
  String medico;
  String especialidade;
  String local;
  String data;
  String protocolo;
  String hora;

  Agendamento(
      {required this.medico,
      required this.especialidade,
      required this.local,
      required this.protocolo,
      required this.paciente,
      required this.data,
      this.hora = ""});
}
