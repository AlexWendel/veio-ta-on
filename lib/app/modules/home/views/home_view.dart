import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../../models/user.dart';
import '../../agendamentos/views/agendamentos_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  final HomeController controller = Get.find<HomeController>();

  final user = getUserFromFirestore(FirebaseAuth.instance.currentUser!.uid);

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Text("Faça agendamento e check-in de suas consultas",
          textAlign: TextAlign.start,
          style: Get.theme.textTheme.displaySmall?.copyWith(
              fontSize: defaultFontSize / context.textScaleFactor,
              color: Colors.black54,
              fontWeight: FontWeight.w500)),
      SizedBox(height: 20),
      Wrap(runSpacing: 0, children: [
        CardHome(
            icon: Icon(Icons.note_alt_outlined, size: mediumIconSize),
            onTap: () {
              Get.to(() => AgendamentosView());
            },
            text: "Agendar consulta",
            description: "Agende uma nova consulta"),
        CardHome(
            icon: Icon(Icons.check_box_outlined, size: mediumIconSize),
            onTap: () {
              // Get.to(CheckInHome());
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
            icon: Icon(Icons.calendar_view_week, size: mediumIconSize),
            onTap: () {
              // Get.to(() => MinhasConsultasScreen());
            },
            text: "Minhas consultas",
            description: "Veja suas consultas agendadas"),

        CardHome(
            icon:
                Icon(Icons.circle_notifications_outlined, size: mediumIconSize),
            onTap: () {
              // Get.to(() => SemExames());
            },
            text: "Notificações",
            description: "Notificações do aplicativo"),
        CardHome(
            icon: Icon(Icons.settings_outlined, size: mediumIconSize),
            onTap: () {
              Get.to(() => SettingsView());
            },
            text: "Configurações",
            description: "Configurações do seu aplicativo"),
      ])
    ];

    return MainDesign(
      body: itemList,
      sliverAppBar: SliverAppBar(
        toolbarHeight: 100 * context.textScaleFactor,
        expandedHeight: 125 * context.textScaleFactor,
        floating: true,
        snap: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Get.theme.primaryColor,
              border: Border(
                  bottom: BorderSide(
                width: 0.2,
              ))),
        ),
        shadowColor: Colors.transparent,
        // leading: IconButton(
        //     onPressed: () => Get.back(),
        //     icon: Icon(backIcon, size: mediumIconSize)),
        title: FutureBuilder(
            future: user,
            builder: (BuildContext context, AsyncSnapshot<UserLocal> snapshot) {
              List<Widget> children;
              if (snapshot.hasData) {
                children = [
                  Row(children: [
                    Flexible(
                      child: Text(
                        "Olá, ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700, /*color: Colors.black54*/
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        snapshot.data!.nome,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700, /*color: Colors.black54*/
                        ),
                      ),
                    ),
                  ]),
                  Row(children: [
                    // Icon(Icons.circle_rounded,
                    //     size: 14, color: Colors.lightGreenAccent),
                    Flexible(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: Get.width / 2,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: RichText(
                            text: TextSpan(
                              text: 'Você tem ',
                              style: TextStyle(
                                  fontSize: 14,
                                  /*color: Colors.black54*/
                                  fontWeight: FontWeight.w600),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '4 ',
                                    style: Get.theme.textTheme.bodyMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.w800)),
                                TextSpan(
                                    text: 'novas notificações!',
                                    style: Get.theme.textTheme.bodyMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ];
              } else if (snapshot.hasError) {
                children = [
                  Row(children: [
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text('Error: ${snapshot.error}'),
                    )
                  ])
                ];
              } else {
                children = [
                  Row(children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(
                        color: Get.theme.backgroundColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Carregando dados...'),
                    )
                  ]),
                ];
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              );
            }),

        actions: [
          InkWell(
            onTap: () {
              //TODO: Página perfil

              // Get.to(() => PerfilView());
            },
            child: Container(
              margin: EdgeInsets.only(top: 5, right: 5, bottom: 10),
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/cj.png"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
