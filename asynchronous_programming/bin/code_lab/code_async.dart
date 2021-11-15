
Future<void> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => print('Large Latte'));
}