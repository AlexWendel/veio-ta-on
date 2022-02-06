import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/appBarr.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/dateCard.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';
import 'package:intl/date_time_patterns.dart';

import 'consultation_date_view.dart';
import 'consultation_medic_view.dart';

class ConsultationDateView extends GetView {
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
                        style: TextStyle(
                            fontSize: defaultFontSize / context.textScaleFactor,
                            color: Colors.black54),
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
                    Get.defaultDialog(
                      titleStyle: TextStyle(color: Colors.black54),
                      middleTextStyle: TextStyle(color: Colors.black54),
                      barrierDismissible: false,
                      buttonColor: verdeBosta,
                      onConfirm: () => Get.to(() => HomeView()),
                      backgroundColor: backGround,
                      title: "Concluido",
                      middleText: "Agendamento realizado com sucesso",
                      confirmTextColor: Colors.black54,
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Continuar",
                        style: TextStyle(
                            fontSize: defaultFontSize / context.textScaleFactor,
                            color: Colors.black54),
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
      appBar: myAppbar(text: "Escolha a data e hora", context: context),
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
                    "Etapa 4: horário da consulta",
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
                    "Selecione o dia e a hora da consulta, entre os horários disponíveis",
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "OpenSans",
                        fontSize:
                            sectionHeaderFontSize / context.textScaleFactor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  width: 1000,
                  alignment: Alignment.center,
                  child: Text(
                    "Selecione a data e o horário do atendimento:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "OpenSans",
                        fontSize:
                            sectionHeaderFontSize / context.textScaleFactor),
                  ),
                ),
                DateCard(
                    text: "CALENDÁRIO",
                    description: "Selecione a data em que deseja ser atendido",
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 50,
                    ),
                    onTap: () {
                      showDatePicker(
                        lastDate: DateTime(2030),
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                      );
                    }),
                DateCard(
                    text: "HORÁRIO",
                    description:
                        "Selecione o horário em que deseja ser atendido",
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 50,
                    ),
                    onTap: () {
                      showTimePicker(
                          initialEntryMode: TimePickerEntryMode.input,
                          context: context,
                          initialTime: TimeOfDay(hour: 0, minute: 0));
                    })
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
