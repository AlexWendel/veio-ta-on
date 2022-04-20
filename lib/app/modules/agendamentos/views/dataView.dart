import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/auth_controller.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/radioItem.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/scheduleDesign.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/radioBox.dart';

import '../../../widgets/input_text.dart';
import '../../MainDesign.dart';
import '../controllers/agendamentos_controller.dart';

class DataView extends GetView<AgendamentosController> {
  var controller = Get.put(AgendamentosController());

  @override
  Widget build(BuildContext context) {
    print("Especialidade selecionada" +
        controller.selectedEspecialidade!.selectedItem!.title);
    print("Local selecionado" + controller.selectedLocal!.selectedItem!.title);

    List<Widget> itemList = [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Selecione a data do atendimento:",
          style: TextStyle(
              color: Get.theme.hintColor.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontSize: Get.textTheme.headlineMedium?.fontSize),
        ),
      ),
      FutureBuilder<DocumentSnapshot>(
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            return Text("Time picker",
                style: Get.textTheme.bodyLarge
                    ?.copyWith(color: Get.theme.focusColor.withOpacity(0.7)));
          },
          future: FirebaseFirestore.instance
              .collection("horarios")
              //TODO : PEGAR DATA PRA UBS ESPECÍFICA
              // .doc("mcHnTMVfUWADyf3vOOF5")
              // .collection("dispniveis")
              .doc("mcHnTMVfUWADyf3vOOF5")
              .get())
    ];
    return ScheduleDesign(
      onPressed: () {
        FirebaseFirestore.instance.collection("agendamento").add({
          "paciente": FirebaseFirestore.instance
              .collection("userDataStorage")
              .doc(FirebaseAuth.instance.currentUser?.uid),
          "local": FirebaseFirestore.instance
              .collection("local")
              .doc(controller.selectedLocal?.selectedItem?.id as String),
          "especialidade": FirebaseFirestore.instance
              .collection("especialidades")
              .doc(
                  controller.selectedEspecialidade?.selectedItem?.id as String),
          "agendadoEm": DateTime.now()
        }).then((value) => Get.defaultDialog(
              titleStyle: TextStyle(color: Colors.black54),
              middleTextStyle: TextStyle(color: Colors.black54),
              barrierDismissible: false,
              buttonColor: Get.theme.backgroundColor,
              onConfirm: () {
                Get.offAll(() => HomeView());
              },
              backgroundColor: backGround,
              title: "Concluído",
              middleText: "Agendamento realizado com sucesso",
              confirmTextColor: Colors.black54,
            ));
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
