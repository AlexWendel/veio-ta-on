import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/settings/controllers/settings_controller.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import '../../../utils/common.sizes.dart';
import "../../../widgets/appBarr.dart";

class SettingsView extends GetResponsiveView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: verdeBosta,
      body: ModalScreen(
        body: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              "Essas são as configurações desse aplicativo:",
              style: TextStyle(
                  fontSize: defaultFontSize / Get.textScaleFactor,
                  color: Colors.black54),
            ),
          ),
          CardHome(
              icon: Icon(Icons.person_pin_rounded),
              onTap: () {},
              text: "Perfil",
              description: "Configurações de perfil como foto e nome.s"),
          CardHome(
              icon: Icon(Icons.email),
              onTap: () {},
              text: "Contas",
              description: "Configurações como email e senha"),
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
              description: "Configuraões do notificações do aplicativo"),
          CardHome(
              icon: Icon(Icons.settings),
              onTap: () {
                Get.to(() => SettingsView());
              },
              text: "Política e privacidade ",
              description:
                  "Veja todos os termos e conheça mais dobre os desenvolvedores")
        ],
        title: "Configurações",
      ),
    );
  }
}
