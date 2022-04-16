import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/radioBox.dart';

class RadioButton extends GetResponsiveView {
  final Color color;
  final Function() onTap;
  final String text;
  final String description;
  final Icon icon;
  final double width;
  final double height;
  int _id = 0;

  RadioButton({
    required this.color,
    required this.onTap,
    required this.text,
    required this.description,
    required this.icon,
    required this.height,
    required this.width,
  });

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
                            color: cardGray,
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
                            color: cardGray,
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
    );
  }
}
