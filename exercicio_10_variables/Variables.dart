final name = 'Thiago';
const lastName = 'Garcia';

const born = 1981;
const age = 2021 - born;

void main(List<String> arguments) {
  print(name);
  print(lastName);
  print(age);

  const Object i = 3;
  const list = [i as int];
  const map = {if (i is int) i: 'Int'};
  const set = {if (list is List<int>) ...list};

  print(i);
  print(list);
  print(map);
  print(set);

  int index = 0;
  double altura = 1.72;
  String text = 'Thiago';
  bool isCold = true;
  List<String> guitars = ['Fender', 'Ibanez', 'Jackson'];

  print(index);
  print(altura);
  print(text);
  print(isCold);
  print(guitars);

  //===========================================================================
  // Convert Number to String and String to Number

  var _ = index.toString();
  var alturaString = altura.toString();

  var alturaDouble = double.parse(alturaString);
  print(alturaDouble);
  print(alturaString);

  var piAsString = 3.14159
      .toStringAsFixed(2); // converte e trunca o número para duas casa decimais
  print(piAsString);

  //Boolean

  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  // LIST

  var moradores = const ['Lucía', 'Ohiane', 'Thiago'];
  assert(moradores.length == 3);
  print(moradores);

  var inicial;
  var finalList = ['0', ...?inicial];
  print(finalList);

  const promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  print(nav);

  // SET

  var family = {'Manoel', 'Aparecida', 'Thiago', 'Fernando', 'Arthur'};
  print(family);
  family.add('Nick');
  family.add('Kiko');
  family.add('Thiago');
  print(family);
  print(family.length);

  var casa = <String>{};
  casa.add('Thiago');
  print(casa);
  casa.addAll(family);

  var result = casa.where((element) => element.startsWith('A'));
  print(result);

  const numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var pares =
      numbers.firstWhere((element) => element % 2 == 0, orElse: () => 0);
  print(pares);

  // MAPs

  var dic = <String, Object>{};
  dic['Manoel'] = 70;
  dic['Aparecida'] = 65;
  dic['Thiago'] = 40;
  dic['Fernando'] = 37;
  dic['Arthur'] = 30;
  dic['Nick'] = 'Cachorro';
  dic['Kiko'] = 'Papagaio';
  dic['Veloz'] = 'Tartaruga';

  print(dic);
  print('Chaves   ${dic.keys}');
  print('Values   ${dic.values}');
  print('Tamanho  ${dic.length}');

  var scores = <String, int>{'Bob': 36};

  for (var key in ['Bob', 'Rohan', 'Sophena']) {
    scores.putIfAbsent(
        key,
        () => key
            .length); // Busca para confirmar se existe a key, caso tenha add o {key:value}
  }
  scores['Bob'];
  assert(scores['Bob'] == 36);

  scores['Rohan'];
  assert(scores['Rohan'] == 'Rohan'.length);

  scores['Sophena'];
  assert(scores['Sophena'] == 'Sophena'.length);
}

/*
TIPOS DE DADOS NO DART

Numbers (int, double)
Strings (String)
Booleans (bool)
Lists (List, also known as arrays)
Sets (Set)
Maps (Map)
Runes (Runes; often replaced by the characters API)
Symbols (Symbol)
The value null (Null)


 */
