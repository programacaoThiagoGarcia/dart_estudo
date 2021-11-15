abstract class Pessoa {
  late final String name;
  late final String nascimento;

  Pessoa.WithLog(){
    print('Create Pessoa');
  }

  void printName() => print(name);
  void printNascimento() => print(nascimento);
}

class PessoaFisica extends Pessoa {
  late final String cpf;
  PessoaFisica(this.cpf, String name, nascimento) : super.WithLog(){
    super.name = name;
    super.nascimento = nascimento;
  }

  @override
  void printName() {
    super.printName();
    print('PF');
  }
}

class PessoaJuridica extends Pessoa {
  late final String cnpj;
  PessoaJuridica(this.cnpj, String name, nascimento) : super.WithLog(){
    super.name = name;
    super.nascimento = nascimento;
  }
  @override
  void printNascimento() {
    super.printNascimento();
    print('PJ');
  }
}