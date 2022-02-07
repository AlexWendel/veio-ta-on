import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/views/consulta_agendada.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/resultado_final.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/cardResultados.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

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
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Toque para ver o resultado dos exames",
                style: Get.theme.textTheme.headline5
                    ?.copyWith(color: Colors.black54),
              )
            ]),
        SizedBox(height: 8),
        CardResultados(
            agendamento: Agendamento(
                especialidade: "Ressonância Magnética",
                medico: "Dr.Iago Costa da silva",
                local: "Hospital Municipal de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "111111111111111111111"))
      ]),
    );
  }
}
