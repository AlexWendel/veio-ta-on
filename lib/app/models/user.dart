class UserLocal {
  String uid;
  String nome;
  String sobrenome;
  String rg;
  String email;
  String telefone;
  String cpf;

  UserLocal(
      {this.uid = "",
      this.nome = "",
      this.sobrenome = "",
      this.telefone = "",
      this.cpf = "",
      this.email = "",
      this.rg = ""});

  factory UserLocal.fromJson(Map<String, dynamic> json, String uidFromDoc) =>
      UserLocal(
        uid: uidFromDoc,
        nome: json['nome'] as String,
        sobrenome: json['sobrenome'] as String,
        rg: json['rg'] as String,
        email: json['email'] as String,
        telefone: json['telefone'] as String,
        cpf: json['cpf'] as String,
      );

  Map<String, Object?> toJson() {
    return {
      'nome': nome,
      'sobrenome': sobrenome,
      'rg': rg,
      'email': email,
      'telefone': telefone,
      'cpf': cpf,
    };
  }
}
