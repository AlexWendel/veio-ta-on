import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';

class ConsultaAgendada extends GetView {
  final Agendamento agendamento;
  ConsultaAgendada({required this.agendamento});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Detalhes do agendamento"));
  }
}
