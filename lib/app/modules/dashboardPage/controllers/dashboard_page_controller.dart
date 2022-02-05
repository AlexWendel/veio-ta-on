import 'package:get/get.dart';

class DashboardPageController extends GetxController {
  //TODO: Implement DashboarPageController

  final count = 0.obs;
  final pageIndex = 0.obs;

  void changePageIndex(int index) {
    pageIndex.value = index;
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
