import 'pessoa.dart';

class Pessoa_juridica extends Pessoa {
  String cnpj;
  Pessoa_juridica(
      {required this.cnpj,
      required String nome,
      required String data_nascimento})
      : super(nome: nome, data_nascimento: data_nascimento);

  @override
  String toString() {
    return '${super.toString()} ${this.cnpj} ';
  }
}
