import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class CardPaciente extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(color: Get.theme.secondaryHeaderColor, width: 0.3)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Juliano Silva",
          style: TextStyle(
            fontSize: defaultCardDescriptionSize,
            color: Get.theme.primaryColor,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Hospital municipal de Marabá",
          style: TextStyle(
            fontSize: sectionSubheaderFontSize,
            color: Get.theme.secondaryHeaderColor,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "20/05/2022",
          style: TextStyle(
            fontSize: sectionSubheaderFontSize,
            color: Get.theme.secondaryHeaderColor,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "examde de doençaexample",
          style: TextStyle(
            fontSize: sectionSubheaderFontSize,
            color: Get.theme.secondaryHeaderColor,
          ),
        ),
      ]),
    );
  }
}
