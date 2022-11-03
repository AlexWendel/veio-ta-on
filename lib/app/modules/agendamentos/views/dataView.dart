import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hospital_maraba/app/models/day.dart';
import 'package:hospital_maraba/app/models/hour.dart';
import 'package:hospital_maraba/app/models/month.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/horaView.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/data_select.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/set_month.dart';
import 'package:hospital_maraba/app/modules/scheduleDesign.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/datepicker.dart';
import 'package:hospital_maraba/app/widgets/input_text.dart';
import 'package:intl/intl.dart';

class DataView extends GetView<AgendamentosController> {
  @override
  final controller = Get.put(AgendamentosController());
  final dateFormatter = DateFormat('dd-MM-yyyy');

  List<Month> months = [
    Month(monthValue: 01, monthName: "Janeiro", days: [
      Day(
          dayName: "01",
          hours: [Hour(hour: 9), Hour(hour: 10), Hour(hour: 11)]),
      Day(
          dayName: "02",
          hours: [Hour(hour: 12), Hour(hour: 13), Hour(hour: 14)])
    ]),
    Month(monthValue: 2, monthName: "Fevereiro", days: [
      Day(
          dayName: "04",
          hours: [Hour(hour: 12), Hour(hour: 13), Hour(hour: 14)]),
      Day(
          dayName: "05",
          hours: [Hour(hour: 15), Hour(hour: 16), Hour(hour: 17)])
    ]),
    Month(monthValue: 6, monthName: "Junho", days: [
      Day(
          dayName: "07",
          hours: [Hour(hour: 12), Hour(hour: 13), Hour(hour: 14)]),
      Day(
          dayName: "08",
          hours: [Hour(hour: 18), Hour(hour: 19), Hour(hour: 20)])
    ])
  ];

  // DateTime selectedDate = DateTime.now();
  Rx<DateTime> selectedDate = Rx<DateTime>(DateTime.now());

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
      controller.currentDate.value = picked;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      // FutureBuilder<DocumentSnapshot>(
      //     builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
      //       return Text("Time picker",
      //           style: Get.textTheme.bodyLarge
      //               ?.copyWith(color: Get.theme.focusColor.withOpacity(0.7)));
      //     },
      //     future: FirebaseFirestore.instance
      //         .collection("horarios")
      //         //TODO : PEGAR DATA PRA UBS ESPECÍFICA
      //         // .doc("mcHnTMVfUWADyf3vOOF5")
      //         // .collection("dispniveis")
      //         .doc("mcHnTMVfUWADyf3vOOF5")
      //         .get()),

      // Text(
      //   "Clique em um dia para prosseguir",
      //   style: TextStyle(fontSize: titleFontSize, color: cardGray),
      // ),
      // SizedBox(
      //   height: 5,
      // ),
      // DatePicker(crossAxisCount: 7)
      Obx(() => Container(
            width: 100,
            alignment: Alignment.center,
            child: Text(
                "${dateFormatter.format(selectedDate.value.toLocal())}"
                    .split(' ')[0],
                style: Get.theme.textTheme.headline5?.copyWith(
                    color: Get.theme.primaryColor,
                    fontWeight: FontWeight.w600)),
          )),
      SizedBox(
        height: 20.0,
      ),
      ElevatedButton(
          onPressed: () => {_selectDate(context)},
          child: Text('Selecionar data'))
    ];
    return ScheduleDesign(
      onPressed: () {
        // controller.createAgendamento().then((value) => Get.defaultDialog(
        //       titleStyle: TextStyle(color: Colors.black54),
        //       middleTextStyle: TextStyle(color: Colors.black54),
        //       barrierDismissible: false,
        //       buttonColor: Get.theme.backgroundColor,
        //       onConfirm: () {
        //         // Get.offAll(() => HoraView());
        //       },
        //       backgroundColor: backGround,
        //       title: "Concluído",
        //       middleText: "Agendamento realizado com sucesso",
        //       confirmTextColor: Colors.black54,
        //     ));

        if (controller.currentDate.value != null) {
          Get.to(() => HoraView());
        } else {
          print("nulo");
        }
      },
      actionText: "Prosseguir",
      body: itemList,
      appBarContent: CustomInputText(
        height: 50,
        hintText: "Pesquisar Data",
        icon: Icon(Icons.search),
      ),
    );
  }
}
