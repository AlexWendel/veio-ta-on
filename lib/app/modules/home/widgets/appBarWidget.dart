import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class AppBarWidget extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: Get.theme.canvasColor,
      title: Row(
        children: [
          SizedBox(
              // width: 60,
              ),
          Image.asset(
            'assets/images/realLogo.png',
            height: 50,
          ),
          Container(
              child: Text('  Saúde Marabá',
                  style: TextStyle(
                      color: Get.theme.primaryColor, fontSize: titleFontSize)))
        ],
      ),
      actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 50, top: 5),
            child: Text(
              "16:50",
              style: TextStyle(
                  color: Get.theme.primaryColorDark, fontSize: titleFontSize),
            )),
      ],
    );
  }
}
