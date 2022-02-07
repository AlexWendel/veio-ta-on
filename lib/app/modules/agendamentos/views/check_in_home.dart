import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/cardCheckin.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';

class CheckInHome extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Fazer check-in"),
      body: Column(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Realizar Check-in",
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Selecione a consulta para fazer o check-in",
                style: Get.theme.textTheme.headline5
                    ?.copyWith(color: Colors.black54),
              )
            ]),
        SizedBox(height: 8),
        CardCheckin(
            agendamento: Agendamento(
                especialidade: "Ressonância Magnutica",
                medico: "Dr.Iago Costa Batima da silva",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "111111111111111111111")),
        CardCheckin(
            agendamento: Agendamento(
                especialidade: "Ressonância Magnética",
                medico: "Dr. Josué Carvalho Sarazaro",
                local: "Hospital Regional de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "999999999999998")),
        CardCheckin(
            agendamento: Agendamento(
                especialidade: "Tomografia Computadorizada",
                medico: "Dr. Henrique Santos",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "9998999+955")),
        CardCheckin(
            agendamento: Agendamento(
                especialidade: "Análise psiquiátrica",
                medico: "Dr. Warley Rabelo Galvão",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "99999997699999989")),
      ]),
    );
  }
}
