import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/modules/novo_agendamento/controllers/novo_agendamento_controller.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';

class SemExames extends GetResponsiveView<NovoAgendamentoController> {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
        bottomNavBar: Container(
          // height: 70,
          color: backGround,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GenericButton(
                text: Text(
                  "Iniciar agendamento",
                  style: Get.theme.textTheme.headline6
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                icon: Icon(Icons.arrow_forward_ios_rounded,
                    color: Get.theme.canvasColor),
                color: Get.theme.colorScheme.primary,
                onPressed: () => {Get.to(ConsultationTypeView())},
              )
            ],
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Resultados de exames",
                      style: Get.theme.textTheme.displaySmall?.copyWith(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 400),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Você ainda não tem exames marcados ",
                        style: Get.theme.textTheme.headline5
                            ?.copyWith(color: Colors.black54),
                      ),
                      TextSpan(
                        text: " Iniciar Agendamento ",
                        style: Get.theme.textTheme.headline5?.copyWith(
                            color: Colors.black54, fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: "para marcar uma consulta!",
                        style: Get.theme.textTheme.headline5
                            ?.copyWith(color: Colors.black54),
                      )
                    ]))
                  ]),
              SizedBox(height: 8),
            ]),
        sliverAppBar: TitleSliverAppBar(title: "Agendamento de consultas"));
  }
}
