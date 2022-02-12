import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/cardResultados.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';

class ResultadosHome extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Resultados dos exames"),
      body: Column(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Resultados de seus exames",
                style: Get.theme.textTheme.headlineSmall?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              Text(
                "Toque para ver o resultado dos exames",
                style: Get.theme.textTheme.titleMedium
                    ?.copyWith(color: Colors.black54),
              )
            ]),
        SizedBox(height: 20),
        CardResultados(
            agendamento: Agendamento(
                data: "25/10/2022",
                especialidade: "Ressonância Magnética",
                medico: "Dr.Iago Costa da silva",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "111111111111111111111")),
        CardResultados(
            agendamento: Agendamento(
                data: "25/10/2022",
                especialidade: "Ressonância Magnética",
                medico: "Dr. Josué Carvalho Sarazaro",
                local: "Hospital Regional de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "99411516565158")),
        CardResultados(
            agendamento: Agendamento(
                data: "25/10/2022",
                especialidade: "Tomografia Computadorizada",
                medico: "Dr. Henrique Santos",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "999999999999999")),
        CardResultados(
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
