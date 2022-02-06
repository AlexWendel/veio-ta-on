import 'package:get/get.dart';

import 'package:hospital_maraba/app/modules/Login/bindings/login_binding.dart';
import 'package:hospital_maraba/app/modules/Login/views/login_view.dart';
import 'package:hospital_maraba/app/modules/agendamentos/bindings/agendamentos_binding.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/agendamentos_view.dart';
import 'package:hospital_maraba/app/modules/dashboardPage/bindings/dashboard_page_binding.dart';
import 'package:hospital_maraba/app/modules/dashboardPage/views/dashboard_page_view.dart';
import 'package:hospital_maraba/app/modules/home/bindings/home_binding.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/novo_agendamento/bindings/novo_agendamento_binding.dart';
import 'package:hospital_maraba/app/modules/novo_agendamento/views/novo_agendamento_view.dart';
import 'package:hospital_maraba/app/modules/settings/bindings/settings_binding.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/modules/signIn/bindings/sign_in_binding.dart';
import 'package:hospital_maraba/app/modules/signIn/views/sign_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD_PAGE,
      page: () => DashboardPageView(),
      binding: DashboardPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.AGENDAMENTOS,
      page: () => AgendamentosView(),
      binding: AgendamentosBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.NOVO_AGENDAMENTO,
      page: () => NovoAgendamentoView(),
      binding: NovoAgendamentoBinding(),
    ),
  ];
}
