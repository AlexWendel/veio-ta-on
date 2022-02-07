import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';

import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';

import '../../../widgets/TitleSliverAppBar.dart';
import '../../../widgets/cardAgendamentos.dart';
import '../../home/controllers/home_controller.dart';
import 'consultation_date_view.dart';

class ConsultationMedicView extends GetView<AgendamentosController> {
  Agendamento currentAgendamento;

  ConsultationMedicView({required this.currentAgendamento});

  @override
  Widget build(
    BuildContext context,
  ) {
    AgendamentosController controller = Get.put(AgendamentosController());
    controller.isPicked = false;
    return BottomNavBarDesignScreen(
        sliverAppBar: TitleSliverAppBar(title: "Escolha o especialista"),
        body: Column(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Etapa 3: Médico",
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.w800)),
                SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Selecione um médico para realizar o exame:",
                    style: Get.theme.textTheme.headlineSmall
                        ?.copyWith(color: Colors.black54),
                  ),
                )
              ]),
          SizedBox(height: 20),
          controller.itemSearchInput3.value,
          Divider(
            color: Colors.transparent,
            height: 10,
          ),
          ScrollBox(itemSearchInput: controller.itemSearchInput3, itemList: [
            CardAgendamentos(
                text: "Dr. Kledilson Farias",
                description: "Neurologista",
                icon: Icon(Icons.tab),
                onTap: () {
                  currentAgendamento.medico = "Dr. Kledilson Farias";
                }),
            CardAgendamentos(
                text: "Dra. Aline Cardozo",
                description: "Odontólogo",
                icon: Icon(Icons.tab),
                onTap: () {
                  currentAgendamento.medico = "Dra. Aline Cardozo";
                }),
            CardAgendamentos(
                text: "Dr. Iago Flores",
                description: "Psiquiatra",
                icon: Icon(Icons.tab),
                onTap: () {
                  currentAgendamento.medico = "Dr. Iago Flores";
                })
          ])
        ]),
        bottomNavBar: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          // height: 70,
          color: Get.theme.canvasColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GenericButton(
                  color: Get.theme.primaryColor,
                  onPressed: () => Get.back(),
                  iconAtLeft: true,
                  text: Text("Voltar",
                      style: Get.theme.textTheme.headline6
                          ?.copyWith(fontWeight: FontWeight.w500)),
                  icon: Icon(Icons.arrow_back_ios_outlined)),
              GenericButton(
                  color: Get.theme.primaryColor,
                  onPressed: () => {
                        if (controller.isPicked)
                          {
                            Get.to(() => ConsultationDateView(
                                  currentAgendamento: currentAgendamento,
                                ))
                          }
                      },
                  text: Text("Continuar",
                      style: Get.theme.textTheme.headline6
                          ?.copyWith(fontWeight: FontWeight.w500)),
                  icon: Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),
        ));
  }
}
