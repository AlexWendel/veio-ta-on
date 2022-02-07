import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';

import '../utils/colorTheme.dart';
import '../utils/common.sizes.dart';

class DateCard extends GetView {
  final String text;
  final String description;
  final Icon icon;
  final Function()? onTap;
  final String name;
  AgendamentosController controller = Get.put(AgendamentosController());

  DateCard(
      {required this.name,
      required this.text,
      required this.description,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Ink(
        child: InkWell(
      splashColor: verdeBosta,
      onTap: () {
        if (name == "date") {
          controller.isDatePicket = true;
        }
        if (this.name == "time") {
          controller.isTimePicked = true;
        }

        onTap!();
      },
      child: Container(
        width: Get.width,
        alignment: Alignment.center,
        height: 100,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        decoration: BoxDecoration(
          color: textFieldGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: defaultFontSize / context.textScaleFactor),
                    ),
                    Container(
                      width: Get.width / 1.5,
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: FittedBox(
                          child: Text(
                        description,
                        maxLines: 1,
                        style: TextStyle(
                            color: Color.fromRGBO(160, 160, 160, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: defaultCardDescriptionSize /
                                context.textScaleFactor),
                      )),
                    ),
                  ],
                ),
                FittedBox(
                  child: icon,
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
