import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/views/consulta_agendada.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/agendamentos_view.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
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

extension TimeOfDayExtension on TimeOfDay {
  TimeOfDay addHour(int hour) {
    return this.replacing(hour: this.hour + hour, minute: this.minute);
  }
}

class ConsultationDateView extends GetView {
  HomeController controller = Get.find<HomeController>();
  Agendamento currentAgendamento;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  ConsultationDateView({
    required this.currentAgendamento,
  });

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      lastDate: DateTime(2030),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
    );

    if (selected != null && selected != _selectedDate) _selectedDate = selected;
  }

  _selectTime(BuildContext context) async {
    _selectedTime.addHour(1);

    final TimeOfDay? selected = await showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(hour: 0, minute: 0));

    if (selected != null && selected != _selectedTime) _selectedTime = selected;
  }

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
                ).then((pickedDate) => currentAgendamento.data =
                    DateFormat('dd/MM/yyyy').format(pickedDate!));

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
                        initialEntryMode: TimePickerEntryMode.dial,
                        context: context,
                        initialTime: TimeOfDay(hour: 0, minute: 0))
                    .then((pickedTime) =>
                        currentAgendamento.hora = pickedTime!.format(context));

                print(currentAgendamento.hora);
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
                    text: Text("Voltar",
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
                        onConfirm: () {
                          currentAgendamento.paciente =
                              AuthController.instance.currentUser.value.name;
                          controller.agendamento.add(currentAgendamento);
                          Get.off(HomeView());
                          Get.to(() => ConsultaAgendada(
                              agendamento: currentAgendamento));
                        },
                        backgroundColor: backGround,
                        title: "Concluído",
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
