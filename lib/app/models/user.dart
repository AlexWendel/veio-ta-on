class User {
  User(
      {this.uid = "",
      this.name = "",
      this.email = "",
      this.password = "",
      this.rg = ""});

  final String uid;
  String name;
  String email;
  String phoneNumber = "+00 00 0000 0000";
  String cpf = "000 000 000 00";
  String rg;
  String password;
  String get firstName => name.split(" ")[0];
}
