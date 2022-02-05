import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/agendamentos_controller.dart';

class AgendamentosView extends GetView<AgendamentosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Agendamento de Exame'),
          centerTitle: true,
        ),
        body: Text(
          'Etapa {}',
          style: TextStyle(fontSize: 20),
        ));
  }
}
