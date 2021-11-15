import 'Point.dart';

class Rectangle {
  Point origem;

  double dx = 0;
  double dy = 0;

  double xf = 0;
  double yf = 0;

  Rectangle(this.origem);

  double get comprimento => xf - origem.x!;
  set comprimento(double value ) => xf = origem.x! + value;
}
