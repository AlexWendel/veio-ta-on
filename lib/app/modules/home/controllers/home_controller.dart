import 'package:get/get.dart';

import '../../../models/agendamento.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final agendamento = <Agendamento>[].obs;
  final count = 0.obs;

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
}
