import 'package:get/get.dart';

import 'package:hospital_maraba/app/modules/dashboarPage/bindings/dashboar_page_binding.dart';
import 'package:hospital_maraba/app/modules/dashboarPage/views/dashboar_page_view.dart';
import 'package:hospital_maraba/app/modules/home/bindings/home_binding.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/singIn/bindings/sing_in_binding.dart';
import 'package:hospital_maraba/app/modules/singIn/views/sing_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOAR_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SING_IN,
      page: () => SingInView(),
      binding: SingInBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOAR_PAGE,
      page: () => DashboarPageView(),
      binding: DashboarPageBinding(),
    ),
  ];
}
