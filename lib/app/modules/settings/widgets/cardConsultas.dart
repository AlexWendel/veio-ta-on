import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class CardConsultas extends GetWidget {
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
        alignment: Alignment.topCenter,
        // height: 150,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: icon,
                ),
                VerticalDivider(
                  width: 10,
                  color: Colors.transparent,
                ),
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
                    RowStyle(context, Icons.location_on_outlined,
                        "Folha 16 - bug aqui se nome grande"),
                    RowStyle(context, Icons.calendar_today_sharp,
                        "13/05/22 as 14:00h"),
                    RowStyle(context, Icons.person_outlined,
                        "Dr. Wanderley andrade"),
                    // InkWell(
                    //     onTap: () {},
                    //     child:
                    Text(
                      "Clique para saber mais ",
                      style: TextStyle(
                          fontSize:
                              sectionHeaderFontSize / context.textScaleFactor,
                          color: Colors.black54),
                    )
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Row RowStyle(BuildContext context, IconData icone, String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icone,
          color: iconGray, //Color.fromRGBO(160, 160, 160, 1),
        ),
        Container(
          // width: 260,
          padding: EdgeInsets.only(top: 5, bottom: 10),
          child: Text(
            texto,
            maxLines: 1,
            style: TextStyle(
                color: Color.fromRGBO(160, 160, 160, 1),
                fontWeight: FontWeight.w400,
                fontSize: defaultCardDescriptionSize / context.textScaleFactor),
          ),
        ),
      ],
    );
  }
}
