import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/views/consulta_agendada.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/check_in_view.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/resultado_final.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.colors.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class CardResultados extends GetView {
  final Agendamento agendamento;
  CardResultados({required this.agendamento});

  @override
  Widget build(BuildContext context) {
    return Ink(
        child: InkWell(
      splashColor: Get.theme.splashColor,
      onTap: () => Get.to(() => ResultadoFinal(agendamento)),
      child: Container(
        alignment: Alignment.centerLeft,
        // height: 150,
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: textFieldGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                agendamento.especialidade,
                style: TextStyle(
                    color: headerGray,
                    fontWeight: FontWeight.w600,
                    fontSize: defaultFontSize / context.textScaleFactor),
              ),
              SizedBox(height: 10),
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Médico: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54)),
                    TextSpan(
                        text: agendamento.medico,
                        style: TextStyle(
                            color: headerGray, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Local: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54)),
                    TextSpan(
                        text: agendamento.local,
                        style: TextStyle(
                            color: headerGray, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Horário: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54)),
                    TextSpan(
                        text: "13 de Fevereiro de 2022 às 14:30h",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black54)),
                  ],
                ),
              )
            ],
          ),
          IconButton(
              icon: Icon(Icons.arrow_forward_ios, color: headerGray),
              onPressed: () => Get.to(ResultadoFinal(agendamento)))
        ]),
      ),
    ));
  }
}
