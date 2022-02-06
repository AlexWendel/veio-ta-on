import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/appBarr.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/dateCard.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';
import 'package:intl/date_time_patterns.dart';

import '../../../widgets/TitleSliverAppBar.dart';
import 'consultation_date_view.dart';
import 'consultation_medic_view.dart';

class ConsultationDateView extends GetView {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Etapa 4: Data",
                  style: Get.theme.textTheme.displaySmall?.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Selecione a data e a hora do atendimento:",
                    style: Get.theme.textTheme.headlineSmall
                        ?.copyWith(color: Colors.black54),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
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
                description: "Selecione o horário em que deseja ser atendido",
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 50,
                ),
                onTap: () {
                  showTimePicker(
                      initialEntryMode: TimePickerEntryMode.input,
                      context: context,
                      initialTime: TimeOfDay(hour: 0, minute: 0));
                }),
          ],
        ),
        sliverAppBar: TitleSliverAppBar(title: "Escolha a data e a hora"),
        bottomNavBar: Container(
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
                              fontSize:
                                  defaultFontSize / context.textScaleFactor,
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
                        buttonColor: Get.theme.backgroundColor,
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
                              fontSize:
                                  defaultFontSize / context.textScaleFactor,
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
        ));
  }
}
