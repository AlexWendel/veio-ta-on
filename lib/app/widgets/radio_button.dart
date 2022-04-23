import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class RadioButton extends GetResponsiveView {
  final Color color;
  final Function() onTap;
  final String text;
  final String description;
  final Icon icon;
  final double width;
  final double height;
  final bool isSelected;
  final String id;

  RadioButton({
    required this.id,
    required this.color,
    required this.onTap,
    required this.text,
    required this.description,
    required this.icon,
    required this.height,
    required this.width,
  }) : isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        splashColor: Get.theme.splashColor,
        onTap: onTap,
        child: Container(
          width: width,
          alignment: Alignment.center,
          height: height,
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(color: color),
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
                            color: Get.theme.hintColor,
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
                            color: Get.theme.hintColor.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: defaultCardDescriptionSize /
                                context.textScaleFactor),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
