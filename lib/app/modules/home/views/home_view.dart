import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  final HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      SizedBox(height: 20),
      Wrap(runSpacing: 0, children: [
        // CardHome(
        //     icon: Icon(Icons.notes_outlined,
        //         size: mediumIconSize, color: iconGray),
        //     onTap: () {
        //       Get.to(() => ResultadosHome());
        //     },
        //     text: "Resultados",
        //     description: "Resultados dos seus exames"),
      ])
    ];

    return MainDesign(
      body: itemList,
      sliverAppBar: SliverAppBar(
        toolbarHeight: 45 * context.textScaleFactor,
        expandedHeight: 100 * context.textScaleFactor,
        floating: true,
        snap: true,
        elevation: 1,
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
        title: Row(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 5, right: 5, left: 5),
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/realLogo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Central de gerencia",
                textAlign: TextAlign.start,
                style: Get.theme.textTheme.displaySmall?.copyWith(
                    fontSize: titleFontSize / context.textScaleFactor,
                    color: Get.theme.primaryColor,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
