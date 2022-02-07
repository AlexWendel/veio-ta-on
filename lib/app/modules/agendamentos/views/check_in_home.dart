import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/views/consulta_agendada.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/resultado_final.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/cardCheckin.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/cardResultados.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

class CheckInHome extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Fazer checkin"),
      body: Column(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Realizar checkin",
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Selecione uma consulta para fazer o checkin",
                style: Get.theme.textTheme.headline5
                    ?.copyWith(color: Colors.black54),
              )
            ]),
        SizedBox(height: 8),
        CardCheckin(
            agendamento: Agendamento(
                data: "25/10/2022",
                especialidade: "Ressonância Magnutica",
                medico: "Dr.Iago Costa Batima da silva",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "111111111111111111111")),
        CardCheckin(
            agendamento: Agendamento(
                data: "25/10/2022",
                especialidade: "Ressonância Magnética",
                medico: "Dr. Josué Carvalho Sarazaro",
                local: "Hospital Regional de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "999999999999998")),
        CardCheckin(
            agendamento: Agendamento(
                data: "25/10/2022",
                especialidade: "Tomografia Computadorizada",
                medico: "Dr. Henrique Santos",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "9998999+955")),
        CardCheckin(
            agendamento: Agendamento(
                data: "25/10/2022",
                especialidade: "Análise psiquiátrica",
                medico: "Dr. Warley Rabelo Galvão",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "999999999999989")),
      ]),
    );
  }
}
