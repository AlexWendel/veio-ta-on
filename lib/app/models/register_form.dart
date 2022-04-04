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
    return 'RegisterForm: nome: ${name}\n cpf: ${cpf}\n rg: ${rg}\n susNumber: ${susNumber}\n phone: ${phone}\n email: ${email}\n emailConf: ${emailConfirmation}\n password: ${password}\n passwordConf: ${passwordConfirmation}';
  }
}
