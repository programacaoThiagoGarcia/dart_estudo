/*
  Functions in Dart
  https://dart.dev/guides/language/language-tour#functions
 */

void main(List<String> arguments) {
  var res = isEqualFunction(5, 6);
  print(res);
  functionNamedParameters(msg: 'Hello');
  functionNamedParameters();
  functionWithParamtersRequire(name: 'olá');
  print(sayHello('Thiago', 'Hello'));
  print(sayHello('Thiago', 'Hello', 'iphone'));

  functionAsParameters((msg) {
    var _msg = msg.toUpperCase();
    print(_msg);
  });

  functionAsParameters((msg) => print(msg));

  var complete = completeName('thiago');
  print(complete('Garcia'));

  usingClosure(
      index: 10,
      completion: (name) {
        var _name = completeName('Thiago');
        print(_name(name));
      });

  usingClosure(index: 5, completion: completion);

  closure(
      name: 'thiago',
      completion: (callback) {
        print(callback);
      });
}

bool isEqualFunction(num1, num2) => num1 == num2;
void functionNamedParameters({String? msg}) {
  if (msg != null) {
    print(msg);
    return;
  }
  print('nulo');
}

void functionWithParamtersRequire({required String name}) =>
    print('Name: ' + name);

String sayHello(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//=============================================================================
//           Function as a parameters

void functionAsParameters(void Function(String msg) completion) {
  for (var i = 0; i < 10; i++) {
    print(i);
  }
  completion('Hello completion');
}

void closure(
    {required String name,
    required void Function(String callback) completion}) {
  print(name);
  completion('fim');
}

//============================================================================
// Closures

Function completeName(String name) {
  return (String lastName) => name + ' ' + lastName;
}

// ignore: use_function_type_syntax_for_parameters
void usingClosure(
    {required int index, required void Function(String name) completion}) {
  for (var i = 0; i < index; i++) {
    print(i);
  }
  completion('Gomes');
}

void completion(String msg) {
  print(msg);
}
