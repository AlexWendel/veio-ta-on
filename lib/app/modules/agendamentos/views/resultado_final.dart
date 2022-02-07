import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/check_in_view.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

class ResultadoFinal extends GetView {
  Agendamento agendamento;
  ResultadoFinal(this.agendamento);

  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Resultado do exame"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Resultado de exame",
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Veja abaixo os detalhes e resultado do exame",
                style: Get.theme.textTheme.headline5
                    ?.copyWith(color: Colors.black54),
              )
            ]),
        Divider(height: 30, color: Colors.grey.shade400),
        Text(
          "Detalhes do exame",
          style: Get.theme.textTheme.displaySmall,
        ),
        SizedBox(height: 8),
        DetalheExameField(
          title: "Nome do paciente:",
          value: agendamento.paciente,
        ),
        SizedBox(height: 5),
        DetalheExameField(
          title: "Médico responsável:",
          value: agendamento.medico,
        ),
        SizedBox(height: 5),
        DetalheExameField(
          title: "Local de atendimento:",
          value: agendamento.local,
        ),
        SizedBox(height: 5),
        DetalheExameField(
          title: "Tipo de atendimento:",
          value: agendamento.especialidade,
        ),
        SizedBox(height: 5),
        DetalheExameField(
          title: "Data do atendimento:",
          value: "Sexta feira, 13 de Março de 2023 às 14:00h",
        ),
        SizedBox(height: 5),
        DetalheExameField(
          title: "Resultado:",
          value: "Aqui ficará o resultado do exame.",
        ),
        SizedBox(height: 5),
        Divider(height: 15, color: Colors.grey.shade400),
        Text(
          "Clique no botão abaixo para baixar o documento do resultado do exame",
          style: Get.theme.textTheme.headline6?.copyWith(color: Colors.black54),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5),
        BotaoBaixar(),
      ]),
    );
  }
}

class BotaoBaixar extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text('Baixar resultado', style: Get.theme.textTheme.headline6),
          onPressed: () {},
        ));
  }
}
