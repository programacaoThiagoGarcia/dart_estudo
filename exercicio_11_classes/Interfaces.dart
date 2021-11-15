class Movel {
  final _name;
  Movel(this._name);
  String nameUppercase() => 'HELLO';
}

class Car implements Movel {
  @override
  get _name => 'Fiat';

  @override
  String nameUppercase() {
    return '$_name'.toUpperCase();
  }
}
