import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import 'controllers/minhas_consultas.controller.dart';

class MinhasConsultasScreen extends GetView<MinhasConsultasController> {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Configurações do aplicativo"),
      body: Column(children: [
        Text(
          "Esses são suas consultas médicas, caso não tenha nenhuma marcada clique em nova consulta",
          style:
              Get.theme.textTheme.displaySmall?.copyWith(color: Colors.black54),
        ),
        SizedBox(height: 8),
        Container(
          alignment: Alignment.center,
          // height: 150,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            // color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              CardConsultas(
                  text: "Neurologista",
                  description: "description",
                  icon: Icon(
                    Icons.local_hospital_outlined,
                    size: mediumIconSize,
                    color: iconGray,
                  ),
                  onTap: () {}),
              CardConsultas(
                  text: "Neurologista",
                  description: "description",
                  icon: Icon(Icons.local_hospital_outlined,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {}),
              CardConsultas(
                  text: "Neurologista",
                  description: "description",
                  icon: Icon(Icons.local_hospital_outlined,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {}),
              CardConsultas(
                  text: "Neurologista",
                  description: "description",
                  icon: Icon(Icons.local_hospital_outlined,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {}),
            ],
          ),
        ),
      ]),
    );
    // Scaffold(
    //   backgroundColor: verdeBosta,
    //   body: ModalScreen(
    //     body: [
    // Text(
    //   "Esses são suas consultas médicas, caso não tenha nenhuma marcada clique em nova consulta",
    //   style: Get.theme.textTheme.displaySmall
    //       ?.copyWith(color: Colors.black54),
    // ),
    // SizedBox(height: 8),
    // Padding(
    //   padding: EdgeInsets.only(left: 20, right: 20, top: 10),
    //   child: Text(
    //     "",
    //     style: TextStyle(
    //         fontSize: defaultFontSize / Get.textScaleFactor,
    //         color: Colors.black54),
    //   ),
    // ),
    // Container(
    //   alignment: Alignment.center,
    //   // height: 150,
    //   margin: EdgeInsets.all(5),
    //   padding: EdgeInsets.all(5),
    //   decoration: BoxDecoration(
    //     // color: Colors.grey.shade100,
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   child: Column(
    //     children: [
    //       CardConsultas(
    //           text: "Neurologista",
    //           description: "description",
    //           icon: Icon(
    //             Icons.local_hospital_outlined,
    //             size: mediumIconSize,
    //             color: iconGray,
    //           ),
    //           onTap: () {}),
    //       CardConsultas(
    //           text: "Neurologista",
    //           description: "description",
    //           icon: Icon(Icons.local_hospital_outlined,
    //               size: mediumIconSize, color: iconGray),
    //           onTap: () {}),
    //       CardConsultas(
    //           text: "Neurologista",
    //           description: "description",
    //           icon: Icon(Icons.local_hospital_outlined,
    //               size: mediumIconSize, color: iconGray),
    //           onTap: () {}),
    //       CardConsultas(
    //           text: "Neurologista",
    //           description: "description",
    //           icon: Icon(Icons.local_hospital_outlined,
    //               size: mediumIconSize, color: iconGray),
    //           onTap: () {}),
    //     ],
    //   ),
    // ),
    //     ],
    //     title: "Minhas consultas",
    //   ),
    //   bottomNavigationBar: Container(
    //     // height: 70,
    //     color: backGround,
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       children: [
    //         Container(
    //           margin: EdgeInsets.all(20),
    //           height: 60,
    //           // width: 200,
    //           child: ElevatedButton(
    //             style: ButtonStyle(
    //               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                   RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(10))),
    //             ),
    //             onPressed: () {},
    //             child: Row(
    //               children: [
    //                 Text(
    //                   "Nova consulta",
    //                   style: textonormal,
    //                 ),
    //                 Icon(Icons.arrow_forward_ios_rounded)
    //               ],
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
