class Contato {
  final String nome;
  final String endereco;
  final String telefone;
  final String email;
  final String cpf;
  final DateTime data;


  Contato(this.nome, this.endereco, this.telefone, this.email, this.cpf, this.data);

  @override
  String toString() => "Contato{nome: $nome, endereco: $endereco, telefone: $telefone, email: $email, cpf: $cpf, data: $data}";
}