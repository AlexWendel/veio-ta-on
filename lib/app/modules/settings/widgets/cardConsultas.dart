import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class CardConsultas extends GetResponsiveView {
  final String text;
  final String description;
  final Icon icon;
  final Function()? onTap;

  CardConsultas(
      {required this.text,
      required this.description,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Ink(
        child: InkWell(
      splashColor: verdeBosta,
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        // height: 150,
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: textFieldGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Color.fromRGBO(120, 120, 120, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: defaultFontSize / context.textScaleFactor),
            ),

            Container(
              // width: 260,
              padding: EdgeInsets.only(top: 8, left: 20),
              child: Text(
                "Hospital Municipal - Folha 17, Quadra Especial - Nova Marabá - PA",
                style: TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    fontWeight: FontWeight.w400,
                    fontSize:
                        defaultCardDescriptionSize / context.textScaleFactor),
              ),
            ),
            Container(
              // width: 260,
              padding: EdgeInsets.only(top: 8, left: 20),
              child: Text(
                "13/05/22 as 14:30h",
                style: TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    fontWeight: FontWeight.w400,
                    fontSize:
                        defaultCardDescriptionSize / context.textScaleFactor),
              ),
            ),
            Container(
              // width: 260,
              padding: EdgeInsets.only(top: 8, left: 20),
              child: Text(
                "Dr. Wanderley Andrade",
                style: TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    fontWeight: FontWeight.w400,
                    fontSize:
                        defaultCardDescriptionSize / context.textScaleFactor),
              ),
            ),
            // Container(
            //   width: 260,
            //   padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
            //   child: Text(
            //     "Clique para saber mais ",
            //     style: TextStyle(
            //         color: Color.fromRGBO(160, 160, 160, 1),
            //         fontWeight: FontWeight.w400,
            //         fontSize:
            //             defaultCardDescriptionSize / context.textScaleFactor),
            //   ),
            // ),

            // Text(
            //   "Clique para saber mais ",
            //   style: TextStyle(
            //       fontSize:
            //           sectionHeaderFontSize / context.textScaleFactor,
            //       color: Colors.black54),
            // )
            // ),
          ],
        ),
      ),
    ));
  }
}
