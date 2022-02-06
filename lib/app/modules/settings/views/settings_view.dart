import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import "../../../widgets/appBarr.dart";

class SettingsView extends GetResponsiveView {
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
              style: textonormal,
            ),
          ),
        ],
        title: "Configurações",
      ),
    );
  }
}
