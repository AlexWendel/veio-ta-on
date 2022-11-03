import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          'Check-in',
          style: Get.textTheme.headlineSmall?.copyWith(color: Colors.black),
        ),
      ),
      Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${consulta.especialidade}',
                    style:
                        Get.textTheme.bodyText2?.copyWith(color: Colors.black),
                  ),
                  Text(
                    '${consulta.agendadoPara.toString().split(' ')[0]} - ${consulta.agendadoPara.toString().split(' ')[1].split('.')[0]}',
                    style:
                        Get.textTheme.bodyText2?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    '${consulta.local}',
                    style:
                        Get.textTheme.bodyText2?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
            QrImage(
              data:
                  '00020126580014BR.GOV.BCB.PIX0136a78a653c-6670-4677-8bc1-e7e09b0e664952040000530398654042.005802BR5922Mateus Araujo Carvalho6009SAO PAULO61080540900062070503***6304D730',
              version: QrVersions.auto,
              size: 400,
            )
          ],
        ),
      ),
    ];

    return ConsultaDesign(
      body: body,
    );
  }
}
