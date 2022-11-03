import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';

import '../../../widgets/input_text.dart';
import '../../scheduleDesign.dart';

class ConsultaView extends GetView {
  final consulta;
  const ConsultaView({
    Key? key,
    this.consulta,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> body = [
      Container(
        child: Text(
          'Especialidade: ${consulta.especialidade}',
          style: Get.textTheme.headlineSmall?.copyWith(color: Colors.black),
        ),
      ),
      Container(
        child: Text(
          'Local: ${consulta.local.toString()}',
          style: Get.textTheme.headlineSmall?.copyWith(color: Colors.black),
        ),
      ),
      Container(
        child: Text(
          'Data: ${consulta.agendadoPara.toString().split(' ')[0]}',
          style: Get.textTheme.headlineSmall?.copyWith(color: Colors.black),
        ),
      ),
      Container(
        child: Text(
          'Horario: ${consulta.agendadoPara.toString().split(' ')[1].split('.')[0]}',
          style: Get.textTheme.headlineSmall?.copyWith(color: Colors.black),
        ),
      ),
    ];

    return ConsultaDesign(
      body: body,
    );
  }
}
