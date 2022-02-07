import 'package:get/get.dart';

class User {
  User({this.name = "", this.email = "", this.password = ""});

  String email;
  String name;
  String cpf = "000 000 000 00";
  String password;
  String get firstName => name.split(" ")[0];
}
