import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';

class AgendamentosController extends GetxController {
  //TODO: Implement AgendamentosController
  final itemSearchInput1 = InputText(
          icon: Icon(Icons.search), hintText: "Procurar por um tipo de exame")
      .obs;

  final itemSearchInput2 = InputText(
          icon: Icon(Icons.search),
          hintText: "Procurar uma unidade de atendimento")
      .obs;

  final itemSearchInput3 =
      InputText(icon: Icon(Icons.search), hintText: "Pesquisar por um médico")
          .obs;

  final count = 0.obs;
  final agendamento = <Agendamento>[].obs;

  final hilightColor = Get.theme.highlightColor.obs;
  bool isDatePicket = false;
  bool isTimePicked = false;
  bool isPicked = false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  setHilightColor(color) {
    hilightColor.value = color;
  }

  void createAgendamentoModel() {}
}
