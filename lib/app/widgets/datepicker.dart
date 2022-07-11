import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/set_month.dart';
import 'package:jiffy/jiffy.dart';

import '../models/datas_disponiveis.dart';

Rxn<Color> _selectedButtonColor = Rxn<Color>();
Rxn<Color> _selectedButtonTextColor = Rxn<Color>();

disableSelectedButton() {
  _selectedButtonColor.value = Get.theme.highlightColor;
  _selectedButtonTextColor.value = Get.theme.disabledColor;
}

class DateButton extends GetView {
  final int day;
  final Rxn<Color> color = Rxn<Color>(Get.theme.highlightColor);
  final Rxn<Color> textColor = Rxn<Color>(Get.theme.disabledColor);
  bool isSelected = false;
  Function() onPressed;

  DateButton({required this.day, required this.onPressed});
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        disableSelectedButton();
        color.value = Get.theme.primaryColor;
        textColor.value = Get.theme.backgroundColor;
        _selectedButtonColor = color;
        _selectedButtonTextColor = textColor;
        onPressed();
      },
      child: Obx(() => Container(
            margin: EdgeInsets.all(2),
            alignment: Alignment.center,
            width: 60,
            height: 60,
            color: color.value,
            child: Text(
              "${day}",
              style: TextStyle(color: textColor.value),
            ),
          )),
    );
  }
}

class DatePicker extends GetView {
  AgendamentosController _controller = Get.find<AgendamentosController>();
  List<DataDisponivel> dates = [];
  final crossAxisCount;
  Rxn<DateTime> date = Rxn(DateTime.now());
  final DateTime startDate = DateTime.now();

  DatePicker({
    required this.crossAxisCount,
  });

  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            setMonth(
                month: date.value!.month,
                tapBack: () {
                  if (date.value!.month > startDate.month) {}
                  date.value = Jiffy(date.value).add(months: -1).dateTime;
                },
                tapForWard: () {
                  if (date.value!.month < 12) {
                    date.value = Jiffy(date.value).add(months: 1).dateTime;
                  }
                }),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 300,
              width: context.width,
              child: FutureBuilder(
                future: _controller.getDatesByMonth(
                    date.value!.year, date.value!.month),
                builder:
                    ((context, AsyncSnapshot<List<DataDisponivel>> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator());
                    case ConnectionState.done:
                      if (snapshot.data!.isEmpty) {
                        return Center(
                          child: Text(
                            "Sem itens",
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }

                      dates = snapshot.data!;

                      for (int i = 0; i < dates.length; i++) {
                        DataDisponivel date = dates[0];
                        dates.removeWhere((element) =>
                            element.agendadoPara.day == date.agendadoPara.day);
                        dates.add(date);
                      }

                      return GridView.count(
                        crossAxisCount: crossAxisCount,
                        children: List.generate(
                            dates.length,
                            (index) => Center(
                                  child: DateButton(
                                    onPressed: () {
                                      _controller.currentDate.value = DateTime(
                                          dates[index].agendadoPara.year,
                                          dates[index].agendadoPara.month,
                                          dates[index].agendadoPara.day);
                                    },
                                    day: dates[index].agendadoPara.day,
                                  ),
                                )),
                      );
                    default:
                      break;
                  }
                  return Text('Sem dados');
                }),
              ),
            ),
          ],
        ));
  }
}
