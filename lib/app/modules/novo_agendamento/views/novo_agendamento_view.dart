import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

import '../controllers/novo_agendamento_controller.dart';

class NovoAgendamentoView extends GetView<NovoAgendamentoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGround,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                backgroundColor: verdeBosta,
                toolbarHeight: 80 * context.textScaleFactor,
                elevation: 0,
                centerTitle: false,
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black54,
                    size: 32,
                  ),
                ),
                title: Text("Agendamento de consultas",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54))

                //aqui....................
                )
          ],
        ));
  }
}
