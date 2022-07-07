import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardLocal.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/seachWidget.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../../data/database.dart';
import '../../../models/local.dart';
import '../../agendamentos/views/agendamentos_view.dart';

class LocalSet extends GetView<HomeController> {
  final locais = Get.find<DatabaseService>().getAllLocais();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Selecione um local para prosseguir",
              style: TextStyle(
                fontSize: defaultFontSize,
                color: Get.theme.highlightColor,
              ),
            ),
            Divider(
              height: 10,
              thickness: 0.1,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 15),
            SeachWidget(text: "Digite um local para pesquisar"),
            SizedBox(height: 20),
            Text(
              "Escolha um local de atendimento",
              style: TextStyle(
                fontSize: defaultFontSize,
                color:
                    // Color(0xff545454
                    Get.theme.primaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                FutureBuilder(
                    future: locais,
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Local>> snapshot) {
                      Widget children;
                      if (snapshot.hasData) {
                        children = Wrap(
                          children: [
                            for (var item in snapshot.data!)
                              CardLocal(
                                img: 'assets/images/hospital.png',
                                text: item.nome,
                                localID: item.id,
                              ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        children = Row(children: [
                          const Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text('Error: ${snapshot.error}'),
                          )
                        ]);
                      } else {
                        children = Row(children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: CircularProgressIndicator(
                              color: Get.theme.primaryColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('Carregando dados...'),
                          )
                        ]);
                      }
                      return children;
                    }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
