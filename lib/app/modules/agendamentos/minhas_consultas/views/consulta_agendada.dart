import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

class ConsultaAgendada extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Consulta agendada"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Consulta agendada",
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w600,
              fontSize: defaultFontSize * 1.6),
        ),
        SizedBox(height: 8),
        Text(
          "Abaixo estão os detalhes de sua consulta, é possível cancelar ou gerar o QR Code.",
          style:
              Get.theme.textTheme.displaySmall?.copyWith(color: Colors.black54),
        ),
        Divider(height: 15, color: Colors.grey.shade400),
        Text(
          "Detalhes da consulta",
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w400,
              fontSize: defaultFontSize * 1.6),
        ),
        SizedBox(height: 5),
        DetalheResultadosField(
          title: "Nome do paciente ",
          description: "Paulinho Paixão Pacana Pereira",
        ),
        SizedBox(height: 5),
        DetalheResultadosField(
          title: "Médico responsável:",
          description: "Warley Rabelo Xerado",
        ),
        SizedBox(height: 5),
        DetalheResultadosField(
          title: "Local de atendimento:",
          description:
              "Hospital Muncipal - Folha 17, Quadra Especial, Lote 10 - Nova Marabá",
        ),
        SizedBox(height: 5),
        DetalheResultadosField(
          title: "Tipo de atendimento:",
          description: "Tratamento para Vício de Valorant",
        ),
        SizedBox(height: 5),
        DetalheResultadosField(
          title: "Data do atemdimento:",
          description: "Sexta feira, 13 de Março de 2023 às 14:00h",
        ),
        Text(
          "Compareça no local de atendimento pelo menos 10 minutos antes da consulta para realizar seu check-in.",
          style: TextStyle(
              color: Color.fromRGBO(80, 80, 80, 1),
              fontWeight: FontWeight.w800,
              fontSize: defaultFontSize * 1.3),
        ),
      ]),
    );
  }
}

class DetalheResultadosField extends GetView {
  final String title;
  final String description;
  DetalheResultadosField({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w300,
              fontSize: defaultFontSize / context.textScaleFactor),
        ),
        Text(
          description,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: sectionSubheaderFontSize / context.textScaleFactor,
              color: Color.fromRGBO(80, 80, 80, 1),
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
