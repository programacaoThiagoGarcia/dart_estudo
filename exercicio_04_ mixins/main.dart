import 'Veiculo.dart';

void main(List<String> args) {
  var carroSport = CarroSport(100, Combustivel.flex);
  carroSport.ligarTurbina();
  print(carroSport.getVelocidadeMax());

  carroSport.desligarTurbina();
  print(carroSport.getVelocidadeMax());

  var carro = Carro(90, Combustivel.flex);
  print(carro.getVelocidadeMax());
}
