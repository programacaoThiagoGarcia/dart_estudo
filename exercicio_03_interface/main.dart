import 'Veiculo.dart';

main(List<String> args) {
  var carro = Carro(combustivel: Combustivel.flex, maxVel: 100.0);
  carro.ligar();
  carro.getStatus() ? print('Ligado') : print('Desligado');

  carro.desligar();
  carro.getStatus() ? print('Ligado') : print('Desligado');

  print('${carro.maxVel}');
}
