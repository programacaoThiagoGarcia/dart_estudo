import 'Pessoa_fisica.dart';
import 'Pessoa_juridica.dart';

main(List<String> args) {
  var pf = Pessoa_fisica(
      cpf: '12345678909', nome: 'Thiago', data_nascimento: '27-05.1981');

  var pj = Pessoa_juridica(
      cnpj: '12345678909', nome: 'Thiago Corp', data_nascimento: '01-01-2001');

  print(pf.toString());
  print(pj.toString());
}
