/*
    Asynchrony in Dart
    https://dart.dev/guides/language/language-tour#asynchrony-support
    https://dart.dev/codelabs/async-await
 */

void main() {
  print('0');
  connectService((msg) {
    print(msg);
  }).then((_) => connectApi()).then((value) => print(value));

  print('3');
  connectApi().then((value) => print(value));
  print('6');
  print('=======================');
}

Future<void> connectService(void Function(String msg) completion) async {
  print('1');
  return Future.delayed(Duration(seconds: 2), () => completion('2'));
}

Future<String> connectApi() async {
  print('4');
  return Future.delayed(Duration(seconds: 1), () => '5');
}
