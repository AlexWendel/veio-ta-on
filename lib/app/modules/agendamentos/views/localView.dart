import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/radioItem.dart';
import 'package:hospital_maraba/app/modules/scheduleDesign.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/radioBox.dart';

import '../../../widgets/input_text.dart';
import '../../MainDesign.dart';
import '../controllers/agendamentos_controller.dart';
import 'dataView.dart';

class LocalView extends GetView<AgendamentosController> {
  var controller = Get.put(AgendamentosController());

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Selecione o local:",
          style: TextStyle(
              color: Get.theme.hintColor.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontSize: Get.textTheme.headlineMedium?.fontSize),
        ),
      ),
      FutureBuilder<QuerySnapshot>(
          future: FirebaseFirestore.instance
              .collection('local')
              // TODO: FILTRAR OS LOCAIS POR TIPO DE EXAME
              .orderBy("adicionadoEm")
              .get(),
          builder: ((context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              var locaisList = snapshot.data?.docs
                  .map((e) => RadioItem(
                      id: e.id,
                      title: e["nome"],
                      description: e["endereco"] + "," + e["bairro"]))
                  .toList() as List<RadioItem>;
              controller.selectedLocal =
                  RadioBox(icon: Icon(Icons.local_activity), items: locaisList);
              return controller.selectedLocal as Widget;
            }
            return Text("Sem dados");
          })),
      RadioBox(
        icon: Icon(Icons.local_activity),
        items: [],
      )
    ];
    return ScheduleDesign(
      onPressed: () {
        if (controller.selectedLocal?.selectedItem == null) {
          Get.defaultDialog(
              title: "Erro na etapa",
              backgroundColor: Get.theme.primaryColor,
              middleText: "Você precisa selecionar um local!");
        } else {
          Get.to(() => DataView());
        }
      },
      actionText: "Prosseguir",
      body: itemList,
      appBarContent: CustomInputText(
        height: 50,
        hintText: "Pesquisar Local",
        icon: Icon(Icons.search),
      ),
    );
  }
}
