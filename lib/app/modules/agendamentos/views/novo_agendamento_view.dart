import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/button.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import '../../novo_agendamento/controllers/novo_agendamento_controller.dart';

class NovoAgendamentoView extends GetResponsiveView<NovoAgendamentoController> {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
        sliverAppBar: TitleSliverAppBar(title: "Agendamento de consultas"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Essas são as etapas para realizar o agendamento de sua consulta:",
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Clique em Iniciar agendamento para começar:",
                    style: Get.theme.textTheme.headline5
                        ?.copyWith(color: Colors.black54),
                  ),
                  SizedBox(height: 8),
                ]),
            CardHome(
                icon: Icon(Icons.local_hospital_outlined,
                    size: mediumIconSize, color: iconGray),
                onTap: () {
                  // Get.to(() => NovoAgendamentoView());
                },
                text: "Tipo de consulta",
                description: "Escolha o tipo de consulta que deseja agendar"),
            CardHome(
                icon: Icon(Icons.calendar_today_sharp,
                    size: mediumIconSize, color: iconGray),
                onTap: () {},
                text: "Data da consulta",
                description: "Escolha uma data disponível para a consulta"),
            CardHome(
                icon: Icon(Icons.add_location,
                    size: mediumIconSize, color: iconGray),
                onTap: () {},
                text: "Local da consulta",
                description: "Selecione a unidade para atendimento"),
            CardHome(
                icon: Icon(Icons.medical_services_outlined,
                    size: mediumIconSize, color: iconGray),
                onTap: () {},
                text: "Selecione o especialista ",
                description: "Selecione um especialista"),
          ],
        ));
  }
}
