import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/minhas_consultas.screen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/check_in_home.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/check_in_view.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/resultados_home.dart';

import 'package:hospital_maraba/app/modules/home/widgets/HomeSliverAppBar.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/novo_agendamento_view.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';

import 'package:hospital_maraba/app/widgets/cardHome.dart';

import '../../../utils/common.sizes.dart';
import '../controllers/home_controller.dart';

import '../../../utils/colorTheme.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Container(
        margin: EdgeInsets.only(top: 40),
        child: Padding(
          padding: EdgeInsets.only(
              left: 20, right: 20, top: 20, bottom: context.height / 5),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Faça agendamento e check-in de suas consultas",
                    textAlign: TextAlign.justify,
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                        fontSize: defaultFontSize / context.textScaleFactor,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 8),
                CardHome(
                    icon: Icon(Icons.note_alt_outlined,
                        size: mediumIconSize, color: iconGray),
                    onTap: () {
                      Get.to(() => NovoAgendamentoView());
                    },
                    text: "Agendar consulta",
                    description: "Agende uma nova consulta"),
                CardHome(
                    icon: Icon(Icons.check_box_outlined,
                        size: mediumIconSize, color: iconGray),
                    onTap: () {
                      Get.to(CheckInHome());
                      // () => CheckInView(
                      // Agendamento(
                      //   especialidade: "Tratamento para Vício de Valorant",
                      //   medico: "Warley Rabelo Xeradão",
                      //   paciente: "Paulinho Paixão Bacana Pereira",
                      //   local: "Hospício Municipal de Marabá",
                      //   protocolo: "9999999999999999"))
                      //   );
                    },
                    text: "Fazer check-in",
                    description: "Gerar QR Code de uma consulta"),
                CardHome(
                    icon: Icon(Icons.notes_outlined,
                        size: mediumIconSize, color: iconGray),
                    onTap: () {
                      Get.to(() => ResultadosHome());
                    },
                    text: "Resultados dos exames",
                    description: "Resultados dos seus exames"),
                CardHome(
                    icon: Icon(Icons.calendar_view_week,
                        size: mediumIconSize, color: iconGray),
                    onTap: () {
                      Get.to(() => MinhasConsultasScreen());
                    },
                    text: "Minhas consultas",
                    description: "Veja suas consultas agendadas"),
                CardHome(
                    icon: Icon(Icons.circle_notifications_outlined,
                        size: mediumIconSize, color: iconGray),
                    onTap: () {},
                    text: "Notificações",
                    description: "Notificações do aplicativo"),
                CardHome(
                    icon: Icon(Icons.settings_outlined,
                        size: mediumIconSize, color: iconGray),
                    onTap: () {
                      Get.to(() => SettingsView());
                    },
                    text: "Configurações",
                    description: "Configure o seu aplicativo"),
              ]),
        ),
        width: 1000,
        decoration: BoxDecoration(
          color: backGround,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
      ),
    ];

    return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        body: CustomScrollView(
          slivers: [
            HomeSliverAppBar(),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => itemList[index],
                    childCount: itemList.length))
          ],
        ));
  }
}
