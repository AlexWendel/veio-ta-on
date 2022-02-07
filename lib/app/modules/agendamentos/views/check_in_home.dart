import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/cardCheckin.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';

class CheckInHome extends GetView {
  @override
  HomeController controller = Get.put(HomeController());
  List<Agendamento> defaultAgendamento = [
    Agendamento(
        data: "25/10/2022",
        especialidade: "Ressonância Magnutica",
        medico: "Dr.Iago Costa Batima da silva",
        local: "Hospital Municipal de Marabá",
        paciente: "Alex Wendel Oliveira da Silva",
        protocolo: "111111111111111111111"),
    Agendamento(
        data: "25/10/2022",
        especialidade: "Ressonância Magnética",
        medico: "Dr. Josué Carvalho Sarazaro",
        local: "Hospital Regional de Marabá",
        paciente: "Alex Wendel Oliveira da Silva",
        protocolo: "999999999999998"),
    Agendamento(
        data: "25/10/2022",
        especialidade: "Tomografia Computadorizada",
        medico: "Dr. Henrique Santos",
        local: "Hospital Municipal de Marabá",
        paciente: "Alex Wendel Oliveira da Silva",
        protocolo: "9998999+955"),
    Agendamento(
        data: "25/10/2022",
        especialidade: "Análise psiquiátrica",
        medico: "Dr. Warley Rabelo Galvão",
        local: "Hospital Municipal de Marabá",
        paciente: "Alex Wendel Oliveira da Silva",
        protocolo: "99999997699999989")
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Fazer check-in"),
      body: Column(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Realizar Check-in",
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Selecione a consulta para fazer o check-in",
                style: Get.theme.textTheme.headline5
                    ?.copyWith(color: Colors.black54),
              )
            ]),
        SizedBox(height: 8),
        Obx(
          () => Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.agendamento.length + 3,
                  itemBuilder: (context, index) {
                    if (index <= 2) {
                      return CardCheckin(
                          agendamento: defaultAgendamento[index]);
                    }

                    return CardCheckin(
                        agendamento: Agendamento(
                            protocolo: "999999999999989",
                            paciente:
                                controller.agendamento[index - 3].paciente,
                            local: controller.agendamento[index - 3].local,
                            medico: controller.agendamento[index - 3].medico,
                            especialidade:
                                controller.agendamento[index - 3].especialidade,
                            data: controller.agendamento[index - 3].data +
                                " às " +
                                controller.agendamento[index - 3].hora +
                                "h"));
                  })),
        )
      ]),
    );
  }
}
