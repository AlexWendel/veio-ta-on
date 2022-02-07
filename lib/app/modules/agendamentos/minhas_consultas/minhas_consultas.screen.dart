import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/views/consulta_agendada.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import 'controllers/minhas_consultas.controller.dart';

class MinhasConsultasScreen extends GetView {
  HomeController controller = Get.put(HomeController());
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
            Obx(() => Container(
                alignment: Alignment.center,
                // height: 150,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  // color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.agendamento.length,
                    itemBuilder: (context, index) {
                      return CardConsultas(
                          agendamento: Agendamento(
                              protocolo: "999999999999989",
                              paciente: AuthController
                                  .instance.currentUser.value.name,
                              local: controller.agendamento[index].local,
                              medico: controller.agendamento[index].medico,
                              especialidade:
                                  controller.agendamento[index].especialidade,
                              data: controller.agendamento[index].data +
                                  " às " +
                                  controller.agendamento[index].hora));
                    }))),
          ]),
    );
  }
}
