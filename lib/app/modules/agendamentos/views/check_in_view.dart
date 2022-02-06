import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/button.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CheckInView extends GetView {
  Agendamento agendamento;
  CheckInView(this.agendamento);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75 * context.textScaleFactor,
          title: Text('Check-in de consulta',
              style: TextStyle(color: Color.fromRGBO(80, 80, 80, 1))),
          centerTitle: false,
          elevation: 1,
          bottomOpacity: 0.8,
          shadowColor: Color.fromRGBO(80, 80, 80, .15),
          backgroundColor: backGround,
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
        ),
        body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
            child: SingleChildScrollView(
                child: Column(children: [
              Center(
                  child: Wrap(spacing: 15, runSpacing: 15,
                      // mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Center(
                        child: FittedBox(
                            child: Text(
                                "Abaixo estão os detalhes da sua consulta",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: sectionHeaderFontSize /
                                        context.textScaleFactor,
                                    fontWeight: FontWeight.w700)))),
                    Center(
                        child: QrImage(
                      data: agendamento.paciente,
                      version: QrVersions.auto,
                      size: (context.width / 2.3),
                      gapless: false,
                    )),
                    Text(
                        "Apresente este QR Code na recepção do local agendado para confirmar sua presença",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(50, 50, 50, 1),
                            fontSize: sectionSubheaderFontSize /
                                context.textScaleFactor,
                            fontWeight: FontWeight.w400))
                  ])),
              Divider(height: 15, color: Colors.grey.shade400),
              DetalhesExame(agendamento),
              BotaoCompartilhar()
            ]))));
  }
}

class BotaoCompartilhar extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            'Compartilhar',
            style: TextStyle(
                fontSize: 15 / context.textScaleFactor, color: Colors.black54),
          ),
          onPressed: () {},
        ));
  }
}

class DetalheExameField extends GetView {
  final String title;
  final String value;

  DetalheExameField({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: defaultFontSize / context.textScaleFactor,
                color: Color.fromRGBO(120, 120, 120, 1)),
          ),
          SizedBox(height: 5),
          Text(
            value,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: sectionSubheaderFontSize / context.textScaleFactor,
                color: Color.fromRGBO(80, 80, 80, 1),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 5)
        ]);
  }
}

class DetalhesExame extends GetWidget {
  final Agendamento exame;
  DetalhesExame(this.exame);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR', null);
    return Container(
        alignment: Alignment.topLeft,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetalheExameField(
                  title: "Nome do paciente", value: exame.paciente),
              DetalheExameField(
                  title: "Médico responsável", value: exame.medico),
              DetalheExameField(
                  title: "Local de atendimento", value: exame.local),
              DetalheExameField(
                  title: "Tipo de atendimento", value: exame.especialidade),
              DetalheExameField(
                  title: "Horário de atendimento",
                  value:
                      DateFormat.yMMMMEEEEd('pt_Br').format(DateTime.now())) //
            ]));
  }
}
