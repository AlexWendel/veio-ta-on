import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class RadioButton extends GetResponsiveView {
  final _isSelected = false.obs;
  final color = Get.theme.highlightColor.obs;
  final Function() onTap;
  final String text;
  final String description;
  final Icon icon;
  final double width;
  final double height;
  final int id;

  RadioButton(
      {required this.onTap,
      required this.text,
      required this.description,
      required this.icon,
      required this.height,
      required this.width,
      required this.id});

  switchSelection() {
    _isSelected.value = !_isSelected.value;
  }

  set onTap(Function onTap) {
    this.onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        splashColor: Get.theme.splashColor,
        onTap: () {
          if (_isSelected.value) {
            color.value = Colors.green;
          }

          onTap();
        },
        child: Obx(
          () => Container(
            width: width,
            alignment: Alignment.center,
            height: height,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(color: color.value),
            child: Row(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: context.width / 2,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          text,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  defaultFontSize / context.textScaleFactor),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: context.width / 2,
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          description,
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: defaultCardDescriptionSize /
                                  context.textScaleFactor),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
