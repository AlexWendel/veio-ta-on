import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';

import '../controllers/home_controller.dart';

import '../../../utils/colorTheme.dart';

class HomeView extends GetResponsiveView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: verdeBosta,
      appBar: AppBar(
        toolbarHeight: 90,
        actions: [
          Container(
            margin: EdgeInsets.only(top: 5, right: 5),
            width: 50,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
              ),
            ),
          ),
        ],
        elevation: 0,
        // leadingWidth: 10,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black54,
            size: 32,
          ),
        ),
        backgroundColor: verdeBosta,
        title: Text("Olá, " + "Paulete Margarete", style: appbartext),
      ),
      body: Center(
          child: Column(children: [
        // Padding(
        //   padding: EdgeInsets.only(left: 80),
        //   child: Text("você tem uma nova notificação"),
        // ),

        Divider(height: 15, color: iconGray),
        Container(
          height: 50,
          width: double.maxFinite,
          decoration: BoxDecoration(color: verdeBosta),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              "Realize seu agendamento e pré-atendimento de consultas.",
              style: textonormal,
            ),
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

        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 10),
          color: backGround,
          child: ListView(
            children: [
              CardHome(
                  icon: Icon(Icons.note_alt_outlined),
                  onTap: () {},
                  text: "Agendar consulta",
                  description: "Defina os detalhes de suas consultas"),
              CardHome(
                  icon: Icon(Icons.notes),
                  onTap: () {},
                  text: "Resultados dos exames",
                  description: "Resultados dos seus exames"),
              CardHome(
                  icon: Icon(Icons.calendar_view_week),
                  onTap: () {},
                  text: "Minhas consultas",
                  description: "veja suas consultas agendadas aqui"),
              CardHome(
                  icon: Icon(Icons.check_box),
                  onTap: () {},
                  text: "Realizar checkin",
                  description: "Crie o QR Code para fazer check-in"),
              CardHome(
                  icon: Icon(Icons.circle_notifications_outlined),
                  onTap: () {},
                  text: "Notificações",
                  description: "Notificações do aplicativo"),
              CardHome(
                  icon: Icon(Icons.settings),
                  onTap: () {
                    Get.to(() => SettingsView());
                  },
                  text: "Configurações",
                  description: "Configure o seu aplicativo"),
            ],
          ),

          //fim
        )),
      ])),
    );
  }
}
