class Veiculo {
  final double maxVel;
  final Combustivel combustivel;
  bool _ligado = false;

  Veiculo(this.maxVel, this.combustivel);

  void ligar() {}
  void desligar() {}
  bool getStatus() => _ligado;
}

enum Combustivel { gasolina, alcool, flex, diesel }

class Carro implements Veiculo {
  Carro({required this.combustivel, required this.maxVel});

  @override
  Combustivel combustivel;

  @override
  double maxVel;
  @override
  bool _ligado = false;

  @override
  void desligar() => _ligado = false;

  @override
  bool getStatus() => _ligado;

  @override
  void ligar() => _ligado = true;
}
