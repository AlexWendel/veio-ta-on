import 'package:get/get.dart';

class RegisterForm {
  RegisterForm(
      {required String name, required String email, required String password}) {
    this.name = name;
    this.email = email;
    this.password = password;
  }

  late Rx<String> _email;
  set email(String value) => _email.value = value;
  String get email => _email.value;

  late Rx<String> _name;
  set name(String value) => _name.value = value;
  String get name => _name.value;

  late Rx<String> _password;
  set password(String value) => _password.value = value;
  String get password => _password.value;
}