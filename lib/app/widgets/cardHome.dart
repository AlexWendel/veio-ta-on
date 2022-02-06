import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class CardHome extends GetWidget {
  final String text;
  final String description;
  final Icon icon;
  final Function()? onTap;

  CardHome(
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
        alignment: Alignment.center,
        height: 100,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: textFieldGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
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
                    Container(
                      width: 260,
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text(
                        description,
                        maxLines: 1,
                        style: TextStyle(
                            color: Color.fromRGBO(160, 160, 160, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: defaultCardDescriptionSize /
                                context.textScaleFactor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
