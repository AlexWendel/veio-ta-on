import 'package:get/get.dart';

class DashboarPageController extends GetxController {
  //TODO: Implement DashboarPageController

  final count = 0.obs;

  var pageIndex = 0;

  void changePageIndex(int index) {
    pageIndex = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
