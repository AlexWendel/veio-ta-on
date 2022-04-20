// ignore_for_file: unnecessary_overrides, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/models/paciente.dart';
import 'package:hospital_maraba/app/models/radioItem.dart';
import 'package:hospital_maraba/app/widgets/radioBox.dart';

class AgendamentosController extends GetxController {
  final count = 0.obs;
  List<Especialidade> especialidades = [];
  RadioBox? selectedEspecialidade;
  RadioBox? selectedLocal;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    await getData();
    super.onReady();
  }

  Future<void> getData() async {
    try {
      QuerySnapshot especialidadesSnap =
          await FirebaseFirestore.instance.collection('especialidades').get();
      especialidadesSnap.docs.map((doc) => doc.data()).forEach((element) {
        var especialidade = (element as Map<String, dynamic>);
        especialidade["id"] = "corrigindo";
        especialidades.add(Especialidade.fromJson(especialidade));
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
