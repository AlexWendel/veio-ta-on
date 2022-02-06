import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Agendamento {
  String paciente;
  String medico;
  String especialidade;
  String local;
  String protocolo;

  Agendamento(
      {required this.medico,
      required this.especialidade,
      required this.local,
      required this.protocolo,
      required this.paciente});
}
