import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';

import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';

import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardAgendamentos.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';
import '../controllers/agendamentos_controller.dart';
import 'consultation_place_view.dart';

class ConsultationTypeView extends GetView<AgendamentosController> {
  Agendamento currentAgendamento = Agendamento(
      medico: "",
      especialidade: "",
      local: "",
      protocolo: "",
      paciente: "",
      data: "");

  @override
  Widget build(BuildContext context) {
    AgendamentosController controller = Get.put(AgendamentosController());
    controller.isPicked = false;
    return BottomNavBarDesignScreen(
      bottomNavBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        // height: 70,
        color: backGround,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GenericButton(
                color: Get.theme.primaryColor,
                onPressed: () => {
                      if (controller.isPicked)
                        {
                          Get.to(() => ConsultationPlaceView(
                                currentAgendamento: currentAgendamento,
                              ))
                        }
                    },
                text: Text("Próxima etapa",
                    style: Get.theme.textTheme.headline6
                        ?.copyWith(fontWeight: FontWeight.w500)),
                icon: Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      ),
      sliverAppBar: TitleSliverAppBar(title: "Escolha o exame"),
      body: Column(children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Etapa 1: Tipo de exame",
                  style: Get.theme.textTheme.displaySmall?.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.w800)),
              SizedBox(height: 10),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Escolha o tipo de exame que deseja agendar:",
                  style: Get.theme.textTheme.headlineSmall
                      ?.copyWith(color: Colors.black54),
                ),
              )
            ]),
        SizedBox(height: 20),
        controller.itemSearchInput1.value,
        Divider(
          color: Colors.transparent,
          height: 10,
        ),
        ScrollBox(itemSearchInput: controller.itemSearchInput1, itemList: [
          CardAgendamentos(
              text: "Hemograma",
              description: "Exame de sangue",
              icon: Icon(Icons.tab),
              onTap: () {
                currentAgendamento.especialidade = "Hemograma";
              }),
          CardAgendamentos(
              text: "Glicemia",
              description: "Exame de sangue",
              icon: Icon(Icons.tab),
              onTap: () {
                currentAgendamento.especialidade = "Glicemia";
              }),
          CardAgendamentos(
              text: "Transaminases",
              description: "Exame de sangue",
              icon: Icon(Icons.tab),
              onTap: () {
                currentAgendamento.especialidade = "Transaminases";
              })
        ])
      ]),
    );
  }
}
