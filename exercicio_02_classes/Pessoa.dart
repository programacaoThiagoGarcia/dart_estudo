abstract class Pessoa {
  String nome;
  String data_nascimento;

  Pessoa({required this.nome, required this.data_nascimento});

  String toString() => '${this.nome} ${this.data_nascimento}';
}
