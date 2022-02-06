import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class ScrollBox extends GetView {
  List<Widget> itemList = [];

  ScrollBox({List<Widget> itemList = const []}) {
    this.itemList = itemList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: cleareGrayBrackground,
      ),
      width: 1000,
      height: Get.height / 2.3,
      child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return itemList[index];
          }),
    );
  }
}
