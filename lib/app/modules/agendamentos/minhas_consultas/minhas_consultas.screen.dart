import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/minhas_consultas.controller.dart';

class MinhasConsultasScreen extends GetView<MinhasConsultasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MinhasConsultasScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MinhasConsultasScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
