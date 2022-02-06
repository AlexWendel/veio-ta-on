import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/appBarr.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';

import 'consultation_date_view.dart';

class ConsultationMedicView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        // height: 70,
        color: backGround,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              // width: 200,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios_rounded),
                      Text(
                        "Voltar",
                        style: textonormal,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              // width: 200,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () {
                    Get.to(() => ConsultationDateView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Continuar",
                        style: textonormal,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: verdeBosta,
      appBar: myAppbar(text: "Escolha o especialista", context: context),
      body: Center(
        child: Column(
          children: [
            Divider(
              color: iconGray,
              height: 15,
            ),
            Expanded(
                child: Container(
              padding:
                  EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              width: 1000,
              child: ListView(children: [
                Container(
                  width: 1000,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Etapa 3: Médico",
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "OpenSans",
                        fontSize: titleFontSize / context.textScaleFactor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  width: 1000,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Selecione um médico para realizar o exame:",
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "OpenSans",
                        fontSize:
                            sectionHeaderFontSize / context.textScaleFactor),
                  ),
                ),
                InputText(
                    icon: Icon(Icons.search),
                    hintText: "Pesquisar especialista"),
                Divider(
                  color: Colors.transparent,
                  height: 10,
                ),
                ScrollBox(itemList: [
                  CardHome(
                      text: "Neurologista",
                      description: "Medico para a sua cabeça",
                      icon: Icon(Icons.tab),
                      onTap: () {}),
                  CardHome(
                      text: "Neurologista",
                      description: "Medico para a sua cabeça",
                      icon: Icon(Icons.tab),
                      onTap: () {}),
                  CardHome(
                      text: "Neurologista",
                      description: "Medico para a sua cabeça",
                      icon: Icon(Icons.tab),
                      onTap: () {})
                ])
              ]),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: backGround,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
            ))
          ],
        ),
      ),
    );
  }
}
