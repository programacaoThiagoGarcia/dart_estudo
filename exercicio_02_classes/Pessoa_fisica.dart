import 'Pessoa.dart';

class Pessoa_fisica extends Pessoa {
  String cpf;
  Pessoa_fisica(
      {required this.cpf,
      required String nome,
      required String data_nascimento})
      : super(nome: nome, data_nascimento: data_nascimento);

  @override
  String toString() {
    return '${super.toString()} ${this.cpf} ';
  }
}
