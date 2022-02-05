import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class CardW extends GetResponsiveView {
  // Card({
  //   String img = 'img',
  //   String title = 'none',
  //   String descript = 'none',
  //   // Function onTap = (){},
  // }) {
  //   this.img = img;
  //   this.title = title;
  //   this.descript = descript;
  //   // this.onTap = onTap;
  // }

  // String img;
  // String title;
  // String descript;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 15),
        height: 80,
        width: double.maxFinite,
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
                Icons.note_alt_outlined,
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
                    "Agendar sua consulta",
                    style: TextStyle(color: Colors.black45, fontSize: 25),
                  ),
                  Text(
                    "Defina os detalhes de suas consultas",
                    style: TextStyle(color: Colors.black38, fontSize: 20),
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
