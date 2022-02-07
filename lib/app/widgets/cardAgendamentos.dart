import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class CardAgendamentos extends GetView {
  final color = Get.theme.highlightColor.obs;
  final height = 100.0.obs;
  final String text;
  final String description;
  final Icon icon;
  final Function()? onTap;
  final isSelected = false.obs;
  final relatives = <Rx<Color>>[].obs;
  int index = 0;
  AgendamentosController controller = Get.put(AgendamentosController());

  CardAgendamentos({
    required this.text,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
          splashColor: Get.theme.splashColor,
          onTap: () {
            isSelected.value = true;
            color.value = Get.theme.primaryColorLight;
            for (int i = 0; i < index; i++) {
              relatives[i].value = Get.theme.highlightColor;
            }
            for (int i = index + 1; i < relatives.length; i++) {
              relatives[i].value = Get.theme.highlightColor;
            }
            controller.isPicked = true;
            onTap!();
          },
          child: Obx(() => Container(
                width: Get.width,
                alignment: Alignment.center,
                height: height.value,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: (color.value),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: icon,
                        ),
                        VerticalDivider(
                          width: 10,
                          color: Colors.transparent,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: Get.width / 2,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  text,
                                  style: TextStyle(
                                      color: Color.fromRGBO(120, 120, 120, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: defaultFontSize /
                                          context.textScaleFactor),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: Get.width / 2,
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  description,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Color.fromRGBO(160, 160, 160, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: defaultCardDescriptionSize /
                                          context.textScaleFactor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }
}
