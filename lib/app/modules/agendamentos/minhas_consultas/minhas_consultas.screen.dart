import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/views/consulta_agendada.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import 'controllers/minhas_consultas.controller.dart';

class MinhasConsultasScreen extends GetView<MinhasConsultasController> {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Minhas Consultas"),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Esses são suas consultas agendadas",
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Toque para ver detalhes da consulta",
                    style: Get.theme.textTheme.headline5
                        ?.copyWith(color: Colors.black54),
                  )
                ]),
            SizedBox(height: 8),
            Container(
                alignment: Alignment.center,
                // height: 150,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  // color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(children: [
                  CardConsultas(
                      agendamento: Agendamento(
                          data: "25/10/2022",
                          especialidade: "Cirurgia de catarata",
                          medico: "Dr. João",
                          local: "Clínica dos olhos",
                          paciente: "Alex Wendel Oliveira da Silva",
                          protocolo: "999999999999999")),
                  CardConsultas(
                      agendamento: Agendamento(
                          data: "25/10/2022",
                          especialidade: "Ressonância Magnética",
                          medico: "Dr. Josué Carvalho Sarazaro",
                          local: "Hospital Regional de Marabá",
                          paciente: "Alex Wendel Oliveira da Silva",
                          protocolo: "999999999999998")),
                  CardConsultas(
                      agendamento: Agendamento(
                          data: "25/10/2022",
                          especialidade: "Tomografia Computadorizada",
                          medico: "Dr. Henrique Santos",
                          local: "Hospital Municipal de Marabá",
                          paciente: "Alex Wendel Oliveira da Silva",
                          protocolo: "999999999999999")),
                  CardConsultas(
                      agendamento: Agendamento(
                          data: "25/10/2022",
                          especialidade: "Análise psiquiátrica",
                          medico: "Dr. Warley Rabelo Galvão",
                          local: "Hospital Municipal de Marabá",
                          paciente: "Alex Wendel Oliveira da Silva",
                          protocolo: "999999999999989")),
                ])),
          ]),
    );
  }
}
