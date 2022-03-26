import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/agendamentos_controller.dart';

class AgendamentosView extends GetView<AgendamentosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgendamentosView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AgendamentosView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
