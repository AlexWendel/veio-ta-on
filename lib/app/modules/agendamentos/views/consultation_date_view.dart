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
import 'package:hospital_maraba/app/widgets/genericButton.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:intl/intl.dart';

import '../../../models/agendamento.dart';
import '../../../widgets/TitleSliverAppBar.dart';
import 'consultation_date_view.dart';
import 'consultation_medic_view.dart';

class ConsultationDateView extends GetView {
  Agendamento currentAgendamento;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  ConsultationDateView({required this.currentAgendamento});

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      lastDate: DateTime(2030),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
    );

    if (selected != null && selected != _selectedDate) _selectedDate = selected;
  }

  _selectTime(BuildContext context) {}

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
                _selectDate(context);

                currentAgendamento.data =
                    DateFormat('dd/MM/yyyy').format(_selectedDate);

                print(currentAgendamento.data);
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
          SizedBox(height: 200),
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
                GenericButton(
                    color: Get.theme.primaryColor,
                    onPressed: () => Get.back(),
                    iconAtLeft: true,
                    text: Text("Regressar",
                        style: Get.theme.textTheme.headline6
                            ?.copyWith(fontWeight: FontWeight.w500)),
                    icon: Icon(Icons.arrow_back_ios_outlined)),
                // width: 200,
                GenericButton(
                    onPressed: () {
                      Get.defaultDialog(
                        titleStyle: TextStyle(color: Colors.black54),
                        middleTextStyle: TextStyle(color: Colors.black54),
                        barrierDismissible: false,
                        buttonColor: Get.theme.backgroundColor,
                        onConfirm: () => Get.offAll(() => HomeView()),
                        backgroundColor: backGround,
                        title: "Concluido",
                        middleText: "Agendamento realizado com sucesso",
                        confirmTextColor: Colors.black54,
                      );
                    },
                    color: Get.theme.primaryColor,
                    text: Text(
                      "Concluir",
                      style: Get.theme.textTheme.headline6
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    icon: Icon(Icons.arrow_forward_ios_rounded))
              ])),
    );
  }
}
