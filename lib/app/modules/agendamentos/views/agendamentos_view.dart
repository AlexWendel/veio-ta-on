import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/radioBox.dart';

import '../../MainDesign.dart';
import '../controllers/agendamentos_controller.dart';

class AgendamentosView extends GetView<AgendamentosController> {
  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Text(
        "Selecione o Tipo de Exame:",
        style: TextStyle(
            color: cardGray,
            fontWeight: FontWeight.bold,
            fontSize: titleFontSize / context.textScaleFactor),
      ),
      RadioBox()
    ];
    return MainDesign(
        body: itemList,
        sliverAppBar: SliverAppBar(
            toolbarHeight: 45 * context.textScaleFactor,
            expandedHeight: 100 * context.textScaleFactor,
            floating: true,
            snap: true,
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  color: Get.theme.backgroundColor,
                  border: Border(
                      bottom: BorderSide(
                    width: 0.2,
                  ))),
            ),
            shadowColor: Colors.transparent,
            // leading: IconButton(
            //     onPressed: () => Get.back(),
            //     icon: Icon(backIcon, size: mediumIconSize)),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Flexible(
                    child: Text(
                      "Olá, ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700, /*color: Colors.black54*/
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Indivíduo",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700, /*color: Colors.black54*/
                      ),
                    ),
                  ),
                ]),
                Row(children: [
                  // Icon(Icons.circle_rounded,
                  //     size: 14, color: Colors.lightGreenAccent),
                  Flexible(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: Get.width / 2,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: RichText(
                          text: TextSpan(
                            text: 'Você tem ',
                            style: TextStyle(
                                fontSize: 14,
                                /*color: Colors.black54*/
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '4 ',
                                  style: Get.theme.textTheme.bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w800)),
                              TextSpan(
                                  text: 'novas notificações!',
                                  style: Get.theme.textTheme.bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            )));
  }
}
