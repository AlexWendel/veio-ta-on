// ignore_for_file: unnecessary_overrides, unused_local_variable
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/datas_disponiveis.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
import 'package:hospital_maraba/app/models/hour.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/widgets/radio_box.dart';
import 'package:flutter/material.dart';

import '../../../models/day.dart';
import '../../../models/month.dart';

class AgendamentosController extends GetxController {
  final count = 0.obs;
  DatabaseService databaseService = Get.find<DatabaseService>();
  Future<List<Local>> allLocais = Get.find<DatabaseService>().getAllLocais();

  List<Especialidade> especialidades = [];
  RadioBox? selectedEspecialidade;
  RadioBox? selectedLocal;
  Rxn<TimeOfDay> currentTime = Rxn<TimeOfDay>();

  Rxn<DateTime> currentDate = Rxn<DateTime>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    await allLocais;
    super.onReady();
  }

  Future<void> getData() async {}

  Future<void> createAgendamento(BuildContext context) async {
    // databaseService.trancaData(selectedHourBox!.selectedItem!.id);
    Agendamento newAgendamento = Agendamento(
      paciente: databaseService.userDataCollectionRef
          .doc(FirebaseAuth.instance.currentUser?.uid),
      local: databaseService.locaisCollectionRef
          .doc(selectedLocal?.selectedItem?.id as String),
      especialidade: databaseService.especialidadesCollectionRef
          .doc(selectedEspecialidade?.selectedItem?.id as String),
      agendadoEm: DateTime.now(),
      agendadoPara: DateTime(
          currentDate.value!.year,
          currentDate.value!.month,
          currentDate.value!.day,
          currentTime.value!.hour,
          currentTime.value!.minute), // TODO: Specify datetime,
      agendadoPor: databaseService.userDataCollectionRef
          .doc(FirebaseAuth.instance.currentUser?.uid),
      estadoAgendamento: EstagioDoAgendamento.marcado,
    );
    return Get.find<DatabaseService>().createAgendamento(newAgendamento);
  }

  Future<List<Local>> getAllLocaisWithSelectedEspecialidade() async {
    print("Call por locais");
    return databaseService
        .getAllLocaisWithEspecialidade(selectedEspecialidade!.selectedItem!.id);
  }

  Future<List<Especialidade>> getAllEspecialidades() async {
    return databaseService.getAllEspecialidades();
  }

  Future<List<DataDisponivel>> getDatesByMonth(int year, int month) async {
    return databaseService.getDatesByMonth(year, month);
  }

  Future<List<DataDisponivel>> getDatesByDay(DateTime date) async {
    return databaseService.getDatesByDay(date);
  }
}
