import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/user.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/seachWidget.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class HomeView extends GetView<HomeController> {
  final String localID;

  HomeView({required this.localID});

  @override
  Widget build(BuildContext context) {
    final agendamentos =
        Get.find<DatabaseService>().getAllAgendamentosFromLocal(localID);

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
            HeaderWidget(localID: localID),
            Divider(
              height: 10,
              thickness: 0.1,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 15),
            SeachWidget(
                text:
                    "Digite o nome ou número do cartão de SUS de um paciente"),
            SizedBox(height: 20),
            Text(
              "Próximos atendimentos",
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FutureBuilder(
                        future: agendamentos,
                        builder: (BuildContext context,
                            AsyncSnapshot<List<Agendamento>> snapshot) {
                          Widget children = Container();
                          if (snapshot.hasData) {
                            // children = Wrap(
                            //   children: [
                            //     for (var item in snapshot.data!)
                            //       CardPaciente(
                            //           img: 'assets/images/hospital.png',
                            //           text: item.nome,
                            //           localID: item.id,
                            //           ),
                            //   ],
                            // );
                            for (var item in snapshot.data!) {
                              print(item.agendadoPor.path);
                              var cu = FutureBuilder(
                                future: Get.find<DatabaseService>()
                                    .userReference(item.paciente.path),
                                builder: (BuildContext context,
                                    AsyncSnapshot<UserLocal> snapshot) {
                                  print('cu');
                                  if (snapshot.hasData) {
                                    // print(snapshot.data!.nome);
                                  }
                                  return Container();
                                },
                              );
                            }
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
                    // CardPaciente(),
                    // CardPaciente(),
                    // CardPaciente(),
                    // CardPaciente(),
                  ],
                ),
                // SizedBox(
                //   height: 60,
                // ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CardPaciente(),
                //     CardPaciente(),
                //     CardPaciente(),
                //     CardPaciente(),
                //   ],
                // ),
                // SizedBox(
                //   height: 60,
                // ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CardPaciente(),
                //     CardPaciente(),
                //     CardPaciente(),
                //     CardPaciente(),
                //   ],
                // ),
                // SizedBox(
                //   height: 60,
                // ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CardPaciente(),
                //     CardPaciente(),
                //     CardPaciente(),
                //     CardPaciente(),
                //   ],
                // ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
