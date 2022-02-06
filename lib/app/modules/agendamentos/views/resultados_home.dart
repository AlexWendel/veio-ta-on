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
        Text(
          "Clique em alguma exame para vizualizar o resutado ",
          style:
              Get.theme.textTheme.displaySmall?.copyWith(color: Colors.black54),
        ),
        SizedBox(height: 8),
        CardResultados(
            agendamento: Agendamento(
                especialidade: "Ressonância Magnética",
                medico: "Dr. Josué Carvalho Sarazaro",
                local: "Hospital Regional de Marabá",
                paciente: "Alex Wendel Oliveira da Silva",
                protocolo: "999999999999998"))
      ]),
    );
  }
}
