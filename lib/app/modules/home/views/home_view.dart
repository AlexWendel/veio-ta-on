import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/minhas_consultas.screen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/check_in_home.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/novo_agendamento_view.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/resultados_home.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/views/sem_exames.dart';
import 'package:hospital_maraba/app/modules/home/widgets/HomeSliverAppBar.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class HomeView extends GetView<HomeController> {
  @override
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Faça agendamento e check-in de suas consultas",
                textAlign: TextAlign.start,
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    fontSize: defaultFontSize / context.textScaleFactor,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 20),
            Wrap(runSpacing: 0, children: [
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
              // CardHome(
              //     icon: Icon(Icons.notes_outlined,
              //         size: mediumIconSize, color: iconGray),
              //     onTap: () {
              //       Get.to(() => ResultadosHome());
              //     },
              //     text: "Resultados",
              //     description: "Resultados dos seus exames"),
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
                  onTap: () {
                    Get.to(() => SemExames());
                  },
                  text: "Notificações",
                  description: "Notificações do aplicativo"),
              CardHome(
                  icon: Icon(Icons.settings_outlined,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {
                    Get.to(() => SettingsView());
                  },
                  text: "Configurações",
                  description: "Configurações do seu aplicativo"),
            ])
          ]),
    ];

    return DefaultDesignScreen(
        body: Column(children: itemList), sliverAppBar: HomeSliverAppBar());
  }
}
