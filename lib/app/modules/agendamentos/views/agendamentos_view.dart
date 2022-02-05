import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';

import '../../settings/views/settings_view.dart';
import '../controllers/agendamentos_controller.dart';

class AgendamentosView extends GetView<AgendamentosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: verdeBosta,
      appBar: AppBar(
        toolbarHeight: 90,
        actions: [
          Container(
            margin: EdgeInsets.only(top: 5, right: 5),
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
              ),
            ),
          ),
        ],
        elevation: 0,
        // leadingWidth: 10,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black54,
            size: 32,
          ),
        ),
        backgroundColor: verdeBosta,
        title: Text("Agendamento de consulta", style: appbartext),
      ),
      body: Center(
          child: Column(children: [
        // Padding(
        //   padding: EdgeInsets.only(left: 80),
        //   child: Text("você tem uma nova notificação"),
        // ),

        Divider(height: 15, color: iconGray),
        Container(
          height: 50,
          width: double.maxFinite,
          decoration: BoxDecoration(color: verdeBosta),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(children: <Widget>[
              Text(
                "Etapa {}",
                style: textonormal,
              ),
              Text("Descrição")
            ]),
          ),
          width: 1000,
          decoration: BoxDecoration(
            color: backGround,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
        ),

        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 10),
          color: backGround,
          child: ListView(
            children: [],
          ),

          //fim
        )),
      ])),
    );
  }
}
