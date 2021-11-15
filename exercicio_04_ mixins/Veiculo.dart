enum Combustivel { gasolina, alcool, flex, diesel }

// Classe Base Veículo
class Veiculo {
  double _maxVel;
  Combustivel combustivel;
  Veiculo(this._maxVel, this.combustivel);
  double getVelocidadeMax() => _maxVel;
}

// Carro
class Carro extends Veiculo {
  Carro(double _maxVel, Combustivel combustivel) : super(_maxVel, combustivel);
}

class CarroSport extends Carro with Turbina {
  CarroSport(double _maxVel, Combustivel combustivel)
      : super(_maxVel, combustivel);

  double getVelocidadeMax() =>
      this.isTurboOn ? this._maxVel + 10 : this._maxVel;
}

mixin Turbina on Carro {
  bool isTurboOn = true;

  void ligarTurbina() {
    this.isTurboOn = true;
  }

  void desligarTurbina() {
    this.isTurboOn = false;
  }
}

// Moto
class Moto extends Veiculo {
  Moto(double _maxVel, Combustivel combustivel) : super(_maxVel, combustivel);
}
