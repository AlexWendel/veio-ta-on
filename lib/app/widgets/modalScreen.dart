import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/settings/controllers/settings_controller.dart';
import '../utils/colorTheme.dart';

class ModalScreen extends GetResponsiveWidget {
  List<Widget> itemList = [];
  String title = "";

  ModalScreen({List<Widget> body = const [], title = ""}) {
    this.itemList.add(Container(
          width: 1000,
          decoration: BoxDecoration(
            color: backGround,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          height: Get.height,
          margin: EdgeInsets.only(top: 40),
          child: Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 90),
              child: Column(
                children: body,
              )),
        ));
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement builder

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: verdeBosta,
          toolbarHeight: 80 * context.textScaleFactor,
          elevation: 0,
          centerTitle: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black54,
              size: 32,
            ),
          ),
          actions: [],
          title: Text(title, style: appbartext),
          floating: true,
          expandedHeight: 100,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: verdeBosta,
                border:
                    Border(bottom: BorderSide(color: iconGray, width: 0.4))),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => itemList[index],
                childCount: itemList.length))
      ],
    );
  }
}
