import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

class PerfilView extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Perfil"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Todas as configurações de perfil:",
          style:
              Get.theme.textTheme.displaySmall?.copyWith(color: Colors.black54),
        ),
        SizedBox(height: 8),
        CardHome(
            icon: Icon(Icons.edit, size: mediumIconSize, color: iconGray),
            onTap: () {},
            text: "Nome",
            description: "Paulete Margarete"),
        CardHome(
            icon: Icon(Icons.document_scanner,
                size: mediumIconSize, color: iconGray),
            onTap: () {},
            text: "CPF",
            description: "**********4456"),
        CardHome(
            icon: Icon(Icons.photo, size: mediumIconSize, color: iconGray),
            onTap: () {},
            text: "Foto de perfil",
            description: "Clique para editar"),
        CardHome(
            icon: Icon(Icons.email, size: mediumIconSize, color: iconGray),
            onTap: () {},
            text: "Conta",
            description: "Configurações como email e senha"),
      ]),
    );
  }
}

class DetalheResultadosField extends GetView {
  final String title;
  final String description;
  DetalheResultadosField({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w300,
              fontSize: defaultFontSize / context.textScaleFactor),
        ),
        Text(
          description,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: sectionSubheaderFontSize / context.textScaleFactor,
              color: Color.fromRGBO(80, 80, 80, 1),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
