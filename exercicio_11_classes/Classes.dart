/*

    Classes in Dart
    https://dart.dev/guides/language/language-tour#classes

 */
import 'Inherited.dart';
import 'Interfaces.dart';
import 'Mixins.dart';
import 'Pessoa.dart';
import 'Point.dart';
import 'Profile.dart';
import 'Rectangle.dart';
import 'Vector.dart';

void main() {
  var p0 = Point(10, 20);
  assert(p0.x == 10);
  assert(p0.y == 20);

// z => não inicializado, porque ele foi definido como "late"
  p0.z = 0;
  assert(p0.z == 0);

  var po = Point.Origin();
  assert(po.x == 0);
  assert(po.y == 0);
  assert(po.z == 0);

// Herança
  var sp = SuperClass('arg_1', 'arg_2');
  assert(sp.arg_1 == 'arg_1');

  var sc = SubClass('arg_1', 'arg_2');
  assert(sc.arg_1 == 'arg_1');
  assert(sc.arg_2 == 'arg_2');
  assert(sc.arg_3 == null);
  assert(sc.arg_4 == null);

  var sc2 = SubClass.All('arg_1', 'arg_2', 'arg_3', 'arg_4');
  assert(sc2.arg_1 == 'arg_1');
  assert(sc2.arg_2 == 'arg_2');
  assert(sc2.arg_3 == 'arg_3');
  assert(sc2.arg_4 == 'arg_4');

  // Instance Variable

  var profile = Profile.unnamed(); // variável definida como late + final
  assert(profile.name == '');
  print(profile.date.toString());

  // Acesso ao construtor não default da super class

  var pf = PessoaFisica('1234567890', 'Thiago', '27051981');
  var pj = PessoaJuridica('123123123123', 'PJ name', 'dd-mm-aaaa');

  pf.printName();
  pj.printNascimento();

  assert(pf.runtimeType.toString() == 'PessoaFisica');
  assert(pj.runtimeType.toString() == 'PessoaJuridica');

  var origem = Point(0, 0);
  var v0 = Vector(origem);
  v0.dx = 3;
  v0.dy = 4;
  assert(v0.comprimento() == 5);

  var o2 = Point(3, 4);
  var v1 = Vector(o2);
  v1.dx = 3;
  v1.dy = 4;

  assert(v0.somaDeVetores(v1) == 10);
  assert(v0 + v1 == 10);

  var ret = Rectangle(origem);
  ret.comprimento = 5;
  assert(ret.xf == 5);

  var ret1 = Rectangle(origem);
  ret1.xf = 10;

  assert(ret1.comprimento == 10);

  var fiat = Car();
  print(fiat.nameUppercase());
  print('Done');

  var maestro = Maestro('nome', false, true);
  maestro.skills();
}
