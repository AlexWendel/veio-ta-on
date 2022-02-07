import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/check_in_view.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';

class ConsultaAgendada extends GetView {
  final Agendamento agendamento;
  ConsultaAgendada({required this.agendamento});

  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
      bottomNavBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Get.theme.canvasColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GenericButton(
                icon: Icon(Icons.delete_outline),
                text: Text(
                  "     Remover    ",
                  style: Get.theme.textTheme.headline6?.copyWith(
                      fontSize: sectionHeaderFontSize / context.textScaleFactor,
                      fontWeight: FontWeight.w500),
                ),
                color: Get.theme.errorColor),
            GenericButton(
                icon: Icon(Icons.share_outlined),
                color: Get.theme.primaryColor,
                text: Text("Compartilhar",
                    style: Get.theme.textTheme.headline6?.copyWith(
                        fontSize:
                            sectionHeaderFontSize / context.textScaleFactor,
                        fontWeight: FontWeight.w500)))
          ],
        ),
      ),
      sliverAppBar: TitleSliverAppBar(title: "Consulta agendada"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Consulta agendada",
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Veja abaixo os detalhes de sua consulta",
                style: Get.theme.textTheme.headline5
                    ?.copyWith(color: Colors.black54),
              )
            ]),
        Divider(height: 30, color: Colors.grey.shade400),
        Text(
          "Detalhes da consulta",
          style: Get.theme.textTheme.displaySmall,
        ),
        SizedBox(height: 8),
        DetalhesExame(agendamento),
        Divider(height: 30, color: Colors.grey.shade400),
        Text(
          "Compareça no local de atendimento pelo menos 10 minutos antes da consulta para realizar seu check-in.",
          textAlign: TextAlign.center,
          style: Get.theme.textTheme.headline5
              ?.copyWith(color: Colors.black54, fontWeight: FontWeight.w700),
        ),
      ]),
    );
  }
}
