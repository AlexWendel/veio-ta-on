import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/modules/Login/views/perfil.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.icons.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/utils/common.sizes.dart';

class HomeSliverAppBar extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: appBarHeight * context.textScaleFactor,
      expandedHeight: appBarHeight * context.textScaleFactor,
      floating: true,
      snap: true,
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            color: Get.theme.backgroundColor,
            border: Border(
                bottom: BorderSide(
              color: iconGray.withOpacity(0.5),
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
            Text("Olá, ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700, /*color: Colors.black54*/
                )),
            Obx(() => Text(AuthController.instance.currentUser.value.firstName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900, /*color: Colors.black54*/
                ))),
          ]),
          Row(children: [
            // Icon(Icons.circle_rounded,
            //     size: 14, color: Colors.lightGreenAccent),
            Container(
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
            )
          ])
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            Get.to(() => PerfilView());
          },
          child: Container(
            margin: EdgeInsets.only(top: 5, right: 5, bottom: 10),
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("imgs/cj.png"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
