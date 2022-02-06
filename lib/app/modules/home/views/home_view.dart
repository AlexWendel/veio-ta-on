import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/check_in_view.dart';
import 'package:hospital_maraba/app/modules/novo_agendamento/views/novo_agendamento_view.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.colors.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';

import '../../../utils/common.sizes.dart';
import '../controllers/home_controller.dart';

import '../../../utils/colorTheme.dart';

class HomeView extends GetResponsiveView<HomeController> {
  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Container(
        margin: EdgeInsets.only(top: 40),
        child: Padding(
          padding: EdgeInsets.only(
              left: 10, right: 10, top: 20, bottom: context.height / 5),
          child: Column(children: [
            Text(
              "Realize o agendamento e check-in de suas consultas já agendadas:",
              style: TextStyle(
                  fontSize: sectionHeaderFontSize / context.textScaleFactor,
                  color: headerGray),
            ),
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
                  Get.to(() => CheckInView(Agendamento(
                      especialidade: "Tratamento para Vício de Valorant",
                      medico: "Warley Rabelo Xeradão",
                      paciente: "Paulinho Paixão Bacana Pereira",
                      local: "Hospício Municipal de Marabá",
                      protocolo: "9999999999999999")));
                },
                text: "Realizar check-in",
                description: "Crie o QR Code para fazer check-in"),
            CardHome(
                icon: Icon(Icons.notes_outlined,
                    size: mediumIconSize, color: iconGray),
                onTap: () {},
                text: "Resultados dos exames",
                description: "Resultados dos seus exames"),
            CardHome(
                icon: Icon(Icons.calendar_view_week,
                    size: mediumIconSize, color: iconGray),
                onTap: () {},
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
        backgroundColor: verdeBosta,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: verdeBosta,
              toolbarHeight: 80 * context.textScaleFactor,
              elevation: 0,
              centerTitle: false,
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black54,
                  size: 32,
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(top: 5, right: 5, bottom: 10),
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                    ),
                  ),
                ),
              ],
              title: Column(
                children: [
                  Row(children: [
                    Text("Olá, ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black54)),
                    Text("Paulete",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black54)),
                  ]),
                  Text("Paulete",
                      style: TextStyle(fontSize: 14 / context.textScaleFactor))
                ],
              ),
              floating: true,
              expandedHeight: 100,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    color: verdeBosta,
                    border: Border(
                        bottom: BorderSide(color: iconGray, width: 0.4))),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => itemList[index],
                    childCount: itemList.length))
          ],
        ));
  }
}
