import 'package:hospital_maraba/app/models/horario.dart';

import 'horario.dart';

class Data {
  final String monthName;
  final List<String> days;
  final String year;

  List<Horario> horarios = [];

  Data(
      {required this.monthName,
      required this.days,
      required this.year,
      required this.horarios});
}
