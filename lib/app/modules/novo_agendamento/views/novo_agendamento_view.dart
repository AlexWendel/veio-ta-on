import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/novo_agendamento_controller.dart';

class NovoAgendamentoView extends GetView<NovoAgendamentoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NovoAgendamentoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NovoAgendamentoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
