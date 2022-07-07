import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/day.dart';
import 'package:hospital_maraba/app/models/month.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/set_month.dart';
import 'package:jiffy/jiffy.dart';

Rxn<Color> _selectedButtonColor = Rxn<Color>();
Rxn<Color> _selectedButtonTextColor = Rxn<Color>();
final RxInt _monthIndex = RxInt(0);

AgendamentosController _controller = Get.find<AgendamentosController>();

disableSelectedButton() {
  _selectedButtonColor.value = Get.theme.highlightColor;
  _selectedButtonTextColor.value = Get.theme.disabledColor;
}

class DateButton extends GetView {
  final Day day;
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
        _controller.selectedDay.value = day;
      },
      child: Obx(() => Container(
            margin: EdgeInsets.all(2),
            alignment: Alignment.center,
            width: 60,
            height: 60,
            color: color.value,
            child: Text(
              day.dayName,
              style: TextStyle(color: textColor.value),
            ),
          )),
    );
  }
}

class DatePicker extends GetView {
  List<Month> months;
  final crossAxisCount;
  Rxn<DateTime> date = Rxn(DateTime.now());
  final DateTime startDate = DateTime.now();

  DatePicker({
    required this.months,
    required this.crossAxisCount,
  });

  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            setMonth(
                month: date.value!.month,
                tapBack: () {
                  if (date.value!.month > startDate.month) {
                    date.value = Jiffy(date.value).add(months: -1).dateTime;
                  }
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
              child: GridView.count(
                crossAxisCount: this.crossAxisCount,
                children: List.generate(
                    months[_monthIndex.value].days.length,
                    (index) => Center(
                          child: DateButton(
                            onPressed: () {
                              _controller.selectedMonth.value =
                                  months[_monthIndex.value];
                            },
                            day: months[_monthIndex.value].days[index],
                          ),
                        )),
              ),
            ),
          ],
        ));
  }
}
