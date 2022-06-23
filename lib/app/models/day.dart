import 'package:flutter/material.dart';
import 'package:hospital_maraba/app/models/hour.dart';

class Day {
  final String dayName;
  final List<Hour> hours;

  Day({required this.dayName, required this.hours});
}
