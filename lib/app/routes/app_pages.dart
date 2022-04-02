import 'package:get/get.dart';

import 'package:hospital_maraba/app/modules/agendamentos/bindings/agendamentos_binding.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/agendamentos_view.dart';
import 'package:hospital_maraba/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:hospital_maraba/app/modules/dashboard/views/dashboard_view.dart';
import 'package:hospital_maraba/app/modules/home/bindings/home_binding.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/login/bindings/login_binding.dart';
import 'package:hospital_maraba/app/modules/login/views/login_view.dart';
import 'package:hospital_maraba/app/modules/settings/bindings/settings_binding.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/modules/signIn/bindings/sign_in_binding.dart';
import 'package:hospital_maraba/app/modules/signIn/views/sign_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.AGENDAMENTOS,
      page: () => AgendamentosView(),
      binding: AgendamentosBinding(),
    ),
  ];
}
