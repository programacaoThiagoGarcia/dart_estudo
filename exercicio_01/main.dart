main(List<String> args) {
  final r = soma(2, 3);
  print(r);
  exec('Thiago', (res, err) {
    print(res);
    print(err);
  });

  var prod = Produto(nome: 'lapis', preco: 1.00);
  print(
      'O produto é ${prod.nome} e custa R\$ ${prod.preco.toStringAsFixed(2)}');

  var conta = Conta(banco: 'Santander');
  print(conta.registaId());
  print(conta.depositar(1000));
  conta.pagarConta('123456', 12.56, (res, comprovante, erro) {
    if (res) {
      print(comprovante);
      return;
    }
    print(erro);
  });

  print(conta.obterSaldo());
}

//======================================================================================================

//dynamic
soma(a, b) => a + b;
void exec(String txt, void Function(String res, String err) completion) {
  print(txt);
  completion('res ok', 'no error');
}

class Produto {
  String nome;
  double preco;

  Produto({required this.nome, this.preco = 0.0});
}

//======================================================================================================

class Conta {
  String banco;
  int? _id;
  double _saldo = 0.0;

  Conta({required this.banco});

  void pagarConta(String referencia, double valor,
      void Function(bool res, String? comprovante, String? erro) completion) {
    if (this._id == null) {
      completion(false, null, 'Sem instalação do pin');
      return;
    }
    if (valor > this._saldo) {
      completion(false, null, 'Sem saldo');
      return;
    }
    completion(
        true,
        'Pagamento para a referência $referencia no valor de R\$$valor efetuado com sucesso',
        null);
    this._saldo -= valor;
  }

  String depositar(double valor) {
    this._saldo += valor;
    return 'Depósito efetuado com sucesso';
  }

  String registaId() {
    this._id = DateTime.now().microsecondsSinceEpoch;
    print(this._id);
    return 'Id registado com sucesso';
  }

  String obterSaldo() => 'Seu saldo é de R\$ ${_saldo.toStringAsFixed(2)}';
}
