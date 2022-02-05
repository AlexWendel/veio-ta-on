import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class CardHome extends GetResponsiveWidget {
  String text = "";
  String description = "";
  Icon icon = Icon(Icons.login);
  void Function() onTap = () {};

  CardHome(
      {required String text,
      required String description,
      Icon icon = const Icon(Icons.login),
      required void Function() onTap}) {
    this.text = text;
    this.description = description;
    this.icon = icon;
    this.onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 15),
        height: 80,
        decoration: BoxDecoration(
          color: textFieldGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                icon.icon,
                size: 55,
              ),
            ),
            VerticalDivider(
              width: 10,
              color: Colors.transparent,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.text,
                    style: TextStyle(color: Colors.black45, fontSize: 25),
                  ),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      this.description,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize:
                              20 * context.textScaleFactor * Get.width / 500),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}