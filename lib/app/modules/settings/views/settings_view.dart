import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/Login/views/login_view.dart';
import 'package:hospital_maraba/app/modules/Login/views/perfil.dart';
import 'package:hospital_maraba/app/modules/dashboardPage/views/dashboard_page_view.dart';
import 'package:hospital_maraba/app/modules/home/widgets/HomeSliverAppBar.dart';
import 'package:hospital_maraba/app/modules/settings/controllers/settings_controller.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.colors.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import '../../../utils/common.sizes.dart';
import "../../../widgets/appBarr.dart";

class SettingsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Configurações do aplicativo"),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Essas são as configurações desse aplicativo:",
              style: Get.theme.textTheme.displaySmall
                  ?.copyWith(color: Colors.black54),
            ),
            SizedBox(height: 8),
            CardHome(
                icon: Icon(Icons.person_pin_rounded,
                    size: mediumIconSize, color: iconGray),
                onTap: () {
                  Get.to(() => PerfilView());
                },
                text: "Perfil",
                description: "Configurações de perfil"),
            CardHome(
                icon: Icon(Icons.circle_notifications_outlined,
                    size: mediumIconSize, color: iconGray),
                onTap: () {},
                text: "Configurações de notificações",
                description: "Configurações das notificações do aplicativo"),
            CardHome(
                icon:
                    Icon(Icons.settings, size: mediumIconSize, color: iconGray),
                onTap: () {
                  Get.to(() => SettingsView());
                },
                text: "Política de privacidade ",
                description:
                    "Veja todos os termos e conheça mais dobre os desenvolvedores"),
            CardHome(
                icon: Icon(Icons.close, size: mediumIconSize, color: iconGray),
                onTap: () {
                  Get.to(() => DashboardPageView());
                },
                text: "Sair da conta",
                description: "Clique para fazer o logout"),
            SizedBox(height: 80),
          ]),
    );
  }
}
