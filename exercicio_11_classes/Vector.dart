
import 'dart:math';

import 'Point.dart';

class Vector {
  Point origem;
  double dx = 0;
  double dy = 0;

  Vector(this.origem);

  double comprimento() {
    var xo = origem.x!.toDouble();
    var yo = origem.y!.toDouble();

    var x = xo + dx;
    var y = yo + dy;

    return sqrt(pow(x, 2) + pow(y, 2));
  }

  double somaDeVetores(Vector v){
    var _dx = dx.toDouble() + v.dx;
    var _dy = dy.toDouble() + v.dy;

    return sqrt(pow(_dx, 2) + pow(_dy, 2));
  }

  //Operator
  double operator +(Vector v){
    return somaDeVetores(v);
  }

}
