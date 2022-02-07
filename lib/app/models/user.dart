import 'package:get/get.dart';

class User {
  User({this.name = "", this.email = "", this.password = ""});

  String email;
  String name;
  String password;
  String get firstName => name.split(" ")[0];
}
