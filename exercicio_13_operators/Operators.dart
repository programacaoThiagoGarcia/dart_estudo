/*
  Functions in Dart
  https://dart.dev/guides/language/language-tour#operators
 */

void main(){
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Double
  assert(5 ~/ 2 == 2); // ~/ devolve um número inteiro da divisão
  assert(5 % 2 == 1); // Resto

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1'); // Exemplo de funcionamento dos operadores artiméticos

  //===============================================================================================================

  var a, b;

  a = 0;
  b = ++a; // Incremento antes de pegar o valor de b.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Incremento depois de b pegar o valor de a.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decremento antes de pegar o valor de b.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decremento depois de b pegar o valor de a.
  assert(a != b); // -1 != 0

  //===============================================================================================================

  assert(2 == 2);
  assert(2 <  3);
  assert(3 >  2);
  assert(2 <= 3);
  assert(3 >= 2);

  //===============================================================================================================

  var first = 'string';
  assert(first is String); // "is" Realiza o teste para validar o tipo quando tem um valor específico.

  var second;
  assert(second is! String); // "is" Realiza o teste para validar o tipo quando não tem um valor específico.

  Object? third = '';
  third as String; // "as" faz o cast do type da variável.
  assert(third is String);

  //===============================================================================================================

  var c = 0;
  var d;

  d ??= c;

  assert(d == c);

  //===============================================================================================================

  var e = true;
  var f = false;
  var g = true;

  assert(e && g || f);
  assert(e && g && !f);

  //===============================================================================================================

  var h = 3;
  var i = h > 2 ? 'expressao_1' : 'expressao_2';
  assert(i == 'expressao_1');

  var j;
  var l = j ?? i;
  assert(l == i);

  //===============================================================================================================




}


