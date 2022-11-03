import 'package:get/utils.dart';

class RegisterForm {
  RegisterForm(
      {this.name = "",
      this.cpf = "",
      this.rg = "",
      this.susNumber = "",
      this.email = "",
      this.emailConfirmation = "",
      this.phone = "",
      this.password = "",
      this.passwordConfirmation = ""});

  String name;
  String cpf;
  String rg;
  String susNumber;
  String phone;
  String email;
  String emailConfirmation;
  String password;
  String passwordConfirmation;

  @override
  String toString() {
    // ignore: unnecessary_brace_in_string_interps
    return 'RegisterForm: nome: ${name}\n cpf: ${cpf}\n rg: ${rg}\n susNumber: ${susNumber}\n phone: ${phone}\n email: ${email}\n emailConf: ${emailConfirmation}\n password: ${password}\n passwordConf: ${passwordConfirmation}';
  }

  List<String> getFields() {
    return [
      name,
      cpf,
      rg,
      susNumber,
      phone,
      email,
      emailConfirmation,
      password,
      passwordConfirmation
    ];
  }

  bool validate() {
    List<String> fields = getFields();

    // All fields are filled
    if (!fields.every((e) => e.isNotEmpty)) {
      throw Exception("Todos os campos precisam estar preenchidos!");
    }

    // Validate email fields
    if (!email.isEmail || !emailConfirmation.isEmail) {
      throw Exception("Insira um email válido nos campos de email.");
    } else if (email != emailConfirmation) {
      throw Exception("Os emails precisam ser iguais.");
    }

    // Validate password fields
    if (password != passwordConfirmation) {
      throw Exception("As senhas precisam ser iguais.");
    } else if (password.length < 8) {
      throw Exception("As senhas ter no mínimo 8 caracteres.");
    }

    // Validate CPF
    if (!cpf.isCpf) {
      throw Exception("Insira um CPF válido.");
    }

    // Validate RG
    if (rg.length < 7) {
      throw Exception("Insira um RG válido.");
    }

    // Validate phone number
    if (!phone.isPhoneNumber) {
      throw Exception("Insira um número de telefone válido.");
    }

    // Validate SUS number
    if (susNumber.length != 15) {
      throw Exception("Insira um cartão de sus válido.");
    }
    return true;
  }
}
